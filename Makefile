CC = gcc
CFLAGS = -O3

# FF = g77
# FFLAGS = -O2

all: stream

# stream_f.exe: stream.f mysecond.o
# 	$(CC) $(CFLAGS) -c mysecond.c
# 	$(FF) $(FFLAGS) -c stream.f
# 	$(FF) $(FFLAGS) stream.o mysecond.o -o stream_f.exe

stream: stream.c
	$(CC) -DSTREAM_ARRAY_SIZE=100000000 -DNTIMES=100 $(CFLAGS) -fopenmp stream.c -o stream

clean:
	rm -f stream *.o

install:

uninstall:


# an example of a more complex build line for the Intel icc compiler
# stream.icc: stream.c
# 	icc -O3 -xCORE-AVX2 -ffreestanding -qopenmp -DSTREAM_ARRAY_SIZE=80000000 -DNTIMES=20 stream.c -o stream.omp.AVX2.80M.20x.icc
