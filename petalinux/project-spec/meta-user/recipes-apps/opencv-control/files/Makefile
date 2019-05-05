APP = opencv-control

# Add any other object files to this list below
APP_OBJS = opencv-control.o

OPENCV_LIBS = -lopencv_core -lopencv_imgcodecs -lopencv_imgproc -lopencv_objdetect

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CXX) -O1 $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS) -lm -lpthread $(OPENCV_LIBS) -luiotools

clean:
	rm -rf *.o

