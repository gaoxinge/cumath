# cumath

Implement python's standard math library by cuda. One can get all fuctions from 

- [src](https://github.com/gaoxinge/cpython/blob/master/Modules/mathmodule.c#L3309-L3361)
- [doc](https://docs.python.org/3/library/math.html)

## TODO

- [ ] finish `cumath.c`
- [ ] finish `pycumath.c`

## other

```
> nvcc -o cumath.o -c cumath.cu
> gcc -I /usr/local/cuda/include -o main.o -c main.c
> gcc -L /usr/local/cuda/lib64 -o main main.o cumath.o -lcuda -lcudart -lstdc++
```
