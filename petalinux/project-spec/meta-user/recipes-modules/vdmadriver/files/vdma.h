#ifndef VDMA_H_
#define VDMA_H_

#include "vdmadriver.h"

/* Register offsets */
#define OFFSET_PARK_PTR_REG                     0x28
#define OFFSET_VERSION                          0x2c

#define OFFSET_VDMA_S2MM_CONTROL_REGISTER       0x30
#define OFFSET_VDMA_S2MM_STATUS_REGISTER        0x34
#define OFFSET_VDMA_S2MM_IRQ_MASK               0x3c
#define OFFSET_VDMA_S2MM_REG_INDEX              0x44
#define OFFSET_VDMA_S2MM_VSIZE                  0xa0
#define OFFSET_VDMA_S2MM_HSIZE                  0xa4
#define OFFSET_VDMA_S2MM_FRMDLY_STRIDE          0xa8
#define OFFSET_VDMA_S2MM_FRAMEBUFFER1           0xac
#define OFFSET_VDMA_S2MM_FRAMEBUFFER2           0xb0
#define OFFSET_VDMA_S2MM_FRAMEBUFFER3           0xb4
#define OFFSET_VDMA_S2MM_FRAMEBUFFER4           0xb8

/* S2MM and MM2S control register flags */
#define VDMA_CONTROL_REGISTER_START                     0x00000001
#define VDMA_CONTROL_REGISTER_CIRCULAR_PARK             0x00000002
#define VDMA_CONTROL_REGISTER_RESET                     0x00000004
#define VDMA_CONTROL_REGISTER_GENLOCK_ENABLE            0x00000008
#define VDMA_CONTROL_REGISTER_FrameCntEn                0x00000010
#define VDMA_CONTROL_REGISTER_INTERNAL_GENLOCK          0x00000080
#define VDMA_CONTROL_REGISTER_WrPntr                    0x00000f00
#define VDMA_CONTROL_REGISTER_FrmCtn_IrqEn              0x00001000
#define VDMA_CONTROL_REGISTER_DlyCnt_IrqEn              0x00002000
#define VDMA_CONTROL_REGISTER_ERR_IrqEn                 0x00004000
#define VDMA_CONTROL_REGISTER_Repeat_En                 0x00008000
#define VDMA_CONTROL_REGISTER_InterruptFrameCount       0x00ff0000
#define VDMA_CONTROL_REGISTER_IRQDelayCount             0xff000000

/* S2MM status register */
#define VDMA_STATUS_REGISTER_HALTED                     0x00000001  // Read-only
#define VDMA_STATUS_REGISTER_VDMAInternalError          0x00000010  // Read or write-clear
#define VDMA_STATUS_REGISTER_VDMASlaveError             0x00000020  // Read-only
#define VDMA_STATUS_REGISTER_VDMADecodeError            0x00000040  // Read-only
#define VDMA_STATUS_REGISTER_StartOfFrameEarlyError     0x00000080  // Read-only
#define VDMA_STATUS_REGISTER_EndOfLineEarlyError        0x00000100  // Read-only
#define VDMA_STATUS_REGISTER_StartOfFrameLateError      0x00000800  // Read-only
#define VDMA_STATUS_REGISTER_FrameCountInterrupt        0x00001000  // Read-only
#define VDMA_STATUS_REGISTER_DelayCountInterrupt        0x00002000  // Read-only
#define VDMA_STATUS_REGISTER_ErrorInterrupt             0x00004000  // Read-only
#define VDMA_STATUS_REGISTER_EndOfLineLateError         0x00008000  // Read-only
#define VDMA_STATUS_REGISTER_FrameCount                 0x00ff0000  // Read-only
#define VDMA_STATUS_REGISTER_DelayCount                 0xff000000  // Read-only

#define FB_SIZE 0x00a00000 // @16MB each
#define FB_PADDING 0x100

#define WIDTH 1280
#define HEIGHT 720
#define PIXELLEN 3
//2.7MB of raw data / image

// (red)(blue)(green)
// 1b   1b    1b



struct vdmaController{
    int fbHandler;
    int width;
    int height;
    int pixelLength;
    int fbLength;
    void __iomem * vdmaVirtualAddress;
    void __iomem * fb1VirtualAddress;
    void __iomem * fb1PhysicalAddress;
    void __iomem * fb2VirtualAddress;
    void __iomem * fb2PhysicalAddress;
    void __iomem * fb3VirtualAddress;
    void __iomem * fb3PhysicalAddress;
    struct vdmaDriver_local *lp;
};


unsigned int vdma_get( struct vdmaController *controller, uint32_t num) {
    return ioread32(controller->vdmaVirtualAddress + num);
}

void vdma_set(struct vdmaController *controller, uint32_t num, uint32_t val) {
	iowrite32(val, controller->vdmaVirtualAddress + num);
}

struct vdmaController* initVdmaController(struct vdmaDriver_local *lp){
	struct vdmaController* local;

	local = (struct vdmaController *) kmalloc(sizeof(struct vdmaController), GFP_KERNEL);
	if (local == NULL) {
		printk(KERN_ERR "Could not allocate vdmaController\n");
		return NULL;
	}
	local->lp = lp;
	return local;
}

int vdma_setup(struct vdmaController *controller) {
    controller->width=WIDTH;
    controller->height=HEIGHT;
    controller->pixelLength=PIXELLEN;
    controller->fbLength=PIXELLEN*WIDTH*HEIGHT;

    controller->vdmaVirtualAddress = controller->lp->base_addr;

    controller->fb1PhysicalAddress = controller->lp->buffer_paddr + FB_PADDING;
    controller->fb2PhysicalAddress = controller->fb1PhysicalAddress + 1 * FB_SIZE + FB_PADDING;
	controller->fb3PhysicalAddress = controller->fb1PhysicalAddress + 2 * FB_SIZE + FB_PADDING;

	controller->fb1VirtualAddress = controller->lp->buffer_vaddr + FB_PADDING;
	controller->fb2VirtualAddress = controller->fb1VirtualAddress + 1 * FB_SIZE + FB_PADDING;
	controller->fb3VirtualAddress = controller->fb1VirtualAddress + 2 * FB_SIZE + FB_PADDING;

	printk(KERN_NOTICE "Successfully set the registers for the framebuffers\n");


	printk(KERN_NOTICE "Attempting memsetfb1\n");
    memset(controller->fb1VirtualAddress, 255, controller->width*controller->height*controller->pixelLength);
    printk(KERN_NOTICE "Attempting memsetfb2\n");
    memset(controller->fb2VirtualAddress, 255, controller->width*controller->height*controller->pixelLength);
    printk(KERN_NOTICE "Attempting memsetfb3\n");
    memset(controller->fb3VirtualAddress, 255, controller->width*controller->height*controller->pixelLength);
    printk(KERN_NOTICE "FrameBuffer testing successfull\n");
    return 0;
}


void vdma_halt(struct vdmaController *controller) {
    vdma_set(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);
}


void vdma_status_dump(int status) {
    if (status & VDMA_STATUS_REGISTER_HALTED) printk(" halted"); else printk("running");
    if (status & VDMA_STATUS_REGISTER_VDMAInternalError) printk(" vdma-internal-error");
    if (status & VDMA_STATUS_REGISTER_VDMASlaveError) printk(" vdma-slave-error");
    if (status & VDMA_STATUS_REGISTER_VDMADecodeError) printk(" vdma-decode-error");
    if (status & VDMA_STATUS_REGISTER_StartOfFrameEarlyError) printk(" start-of-frame-early-error");
    if (status & VDMA_STATUS_REGISTER_EndOfLineEarlyError) printk(" end-of-line-early-error");
    if (status & VDMA_STATUS_REGISTER_StartOfFrameLateError) printk(" start-of-frame-late-error");
    if (status & VDMA_STATUS_REGISTER_FrameCountInterrupt) printk(" frame-count-interrupt");
    if (status & VDMA_STATUS_REGISTER_DelayCountInterrupt) printk(" delay-count-interrupt");
    if (status & VDMA_STATUS_REGISTER_ErrorInterrupt) printk(" error-interrupt");
    if (status & VDMA_STATUS_REGISTER_EndOfLineLateError) printk(" end-of-line-late-error");
    printk(" frame-count:%d", (status & VDMA_STATUS_REGISTER_FrameCount) >> 16);
    printk(" delay-count:%d", (status & VDMA_STATUS_REGISTER_DelayCount) >> 24);
    printk("\n");
}

void vdma_s2mm_status_dump(struct vdmaController *controller) {
    int status = vdma_get(controller, OFFSET_VDMA_S2MM_STATUS_REGISTER);
    int control = vdma_get(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER);
    printk("S2MM control register: %08x\n", control);
    printk("S2MM status register (%08x):", status);
    vdma_status_dump(status);
}


void vdma_start_triple_buffering(struct vdmaController *controller) {
    // Reset VDMA
    vdma_set(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);
    //vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);

    // Wait for reset to finish
    while((vdma_get(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET)==4);
    //while((vdma_get(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET)==4);

    // Clear all error bits in status register
    vdma_set(controller, OFFSET_VDMA_S2MM_STATUS_REGISTER, 0);
    //vdma_set(handle, OFFSET_VDMA_MM2S_STATUS_REGISTER, 0);

    // Do not mask interrupts
    vdma_set(controller, OFFSET_VDMA_S2MM_IRQ_MASK, 0xf);

    int interrupt_frame_count = 3;

    // Start both S2MM and MM2S in triple buffering mode
    vdma_set(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER,
        (interrupt_frame_count << 16) |
        VDMA_CONTROL_REGISTER_START |
		VDMA_CONTROL_REGISTER_GENLOCK_ENABLE |
        VDMA_CONTROL_REGISTER_INTERNAL_GENLOCK |
        VDMA_CONTROL_REGISTER_CIRCULAR_PARK);


    printk("Waiting for VDMA to start running...\n");
    while((vdma_get(controller, 0x30)&1)==0 || (vdma_get(controller, 0x34)&1)==1) {}

    // Extra register index, use first 16 frame pointer registers
    vdma_set(controller, OFFSET_VDMA_S2MM_REG_INDEX, 0);

    // Write physical addresses to control register
    vdma_set(controller, OFFSET_VDMA_S2MM_FRAMEBUFFER1, controller->fb1PhysicalAddress);
    vdma_set(controller, OFFSET_VDMA_S2MM_FRAMEBUFFER2, controller->fb2PhysicalAddress);
    vdma_set(controller, OFFSET_VDMA_S2MM_FRAMEBUFFER3, controller->fb3PhysicalAddress);

    // Write Park pointer register
    vdma_set(controller, OFFSET_PARK_PTR_REG, 0);

    // Frame delay and stride (bytes)
    vdma_set(controller, OFFSET_VDMA_S2MM_FRMDLY_STRIDE, controller->width*controller->pixelLength);

    // Write horizontal size (bytes)
    vdma_set(controller, OFFSET_VDMA_S2MM_HSIZE, controller->width*controller->pixelLength);

    // Write vertical size (lines), this actually starts the transfer
    vdma_set(controller, OFFSET_VDMA_S2MM_VSIZE, controller->height);
}

int vdma_running(struct vdmaController *controller) {
    // Check whether VDMA is running, that is ready to start transfers
    return (vdma_get(controller, 0x34)&1)==1;
}

int vdma_idle(struct vdmaController *controller) {
    // Check whtether VDMA is transferring
    return (vdma_get(controller, OFFSET_VDMA_S2MM_STATUS_REGISTER) & VDMA_STATUS_REGISTER_FrameCountInterrupt)!=0;
}
#endif
