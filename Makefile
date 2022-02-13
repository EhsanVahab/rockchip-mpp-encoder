CFLAGS=-O3
LDFLAGS=-lrockchip_mpp -lutils -lm -lopencv_core  -lpthread -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_videoio -lopencv_imgcodecs
LIBDIR=-L/usr/local/lib -L/home/firefly/Project/mpp/build/lib
INCDIR= -I/usr/include/aarch64-linux-gnu -I/home/firefly/Project/mpp/inc -I/home/firefly/Project/mpp/utils -I/home/firefly/Project/mpp/osal/inc


default : enc


enc : enc.o 
	g++  -o $@ $^  $(INCDIR) $(LIBDIR) $(LDFLAGS) 


%.o : %.cpp
	g++  -c  $(INCDIR) $(LIBDIR) $(LDFLAGS) $(CFLAGS)  -o $@ $<

clean :
	rm -f *.o enc
