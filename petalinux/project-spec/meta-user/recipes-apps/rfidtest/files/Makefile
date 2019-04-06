APP = rfidtest

# Add any other object files to this list below
APP_OBJS = rfidtest.o

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS)

clean:
	rm -rf *.o
