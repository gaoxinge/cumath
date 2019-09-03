# cumath

Reimplement python's standard math library by cuda. One can get all apis from [doc](https://docs.python.org/3/library/math.html) and the official implementation from [mathmodule.c](https://github.com/python/cpython/blob/master/Modules/mathmodule.c).

## TODO

- [ ] finish `cumath.c`
- [ ] finish `pycumath.c`

## other

```
> nvcc -o cumath.o -c cumath.cu
> gcc -I /usr/local/cuda/include -o main.o -c main.c
> gcc -L /usr/local/cuda/lib64 -o main main.o cumath.o -lcuda -lcudart -lstdc++
```
