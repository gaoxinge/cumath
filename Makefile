cumath.a: cumath.o
	ar rsc $@ $^

cumath.o: cumath.cu cumath.h
	nvcc -o $@ -c $<

.PHONY: main clean

main: main.o cumath.a
	gcc -L /usr/local/cuda/lib64 -o $@ $^ -lcuda -lcudart -lstdc++

main.o: main.c cumath.h
	gcc -I /usr/local/cuda/include -o $@ -c $<

clean:
	rm -rf *.o *.a main
