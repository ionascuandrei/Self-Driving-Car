APP = motionselftest

# Add any other object files to this list below
APP_OBJS = motionselftest.o

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS) -luiotools

clean:
	rm -rf *.o

