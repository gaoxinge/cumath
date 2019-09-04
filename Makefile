AR = ar
CC = gcc
NVCC = nvcc
COMMON = -I/usr/local/cuda/include/
ARFLAGS = rsc
LDFLAGS = -L/usr/local/cuda/lib64 -lcuda -lcudart -lstdc++
CFLAGS = -Wall -Wno-unused-result -Wno-unknown-pragmas -Wfatal-errors -fPIC

cumath.a: cumath.o
	$(AR) $(ARFLAGS) $@ $^

cumath.o: cumath.cu cumath.h
	$(NVCC) $(COMMON) --compiler-options "$(CFLAGS)" -o $@ -c $<

.PHONY: main build install clean

main: main.o cumath.a
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

main.o: main.c cumath.h
	$(CC) $(COMMON) $(CLFALGS) -o $@ -c $<

build:
	python3 setup.py build

install:
	python3 setup.py install

clean:
	rm -rf *.o *.a *.so main build/
