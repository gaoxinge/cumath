# cumath

Reimplement python's standard math library by cuda. One can get all apis from [doc](https://docs.python.org/3/library/math.html) and the official implementation from [mathmodule.c](https://github.com/python/cpython/blob/master/Modules/mathmodule.c).

# install

## install c

```
$ make
$ make main
$ ./main
cupi = 3.141593
cue = 2.718282
cuexp(1.0) = 2.718282
cuexpm1(1.0) = 1.718282
culog(4.0, 2.0) = 2.000000
culog1p(cue - 1.0) = 1.000000
culog2(2.0) = 1.000000
culog10(10.0) = 1.000000
cupow(2.0, 2.0) = 4.000000
cusqrt(4.0) = 2.000000
cudegrees(cuacos(0.5)) = 60.000000
cudegrees(cuasin(0.5)) = 30.000000
cudegrees(cuatan(1.0)) = 45.000000
cudegrees(cuatan2(1.0, 1.0)) = 45.000000
cucos(curadians(60.0)) = 0.500000
cuhypot(3.0, 4.0) = 5.000000
cusin(curadians(30.0)) = 0.500000
cutan(curadians(45.0)) = 1.000000
cudegrees(cupi / 180.0) = 1.000000
curadians(180.0 / cupi) = 1.000000
$ make clean
```

## install python

```
$ make
$ make build
$ make install
$ python3 main.py
pi = 3.141593
e = 2.718282
exp(1.0) = 2.718282
expm1(1.0) = 1.718282
log(4.0, 2.0) = 2.000000
log1p(e - 1.0) = 1.000000
log2(2.0) = 1.000000
log10(10.0) = 1.000000
pow(2.0, 2.0) = 4.000000
sqrt(4.0) = 2.000000
degrees(acos(0.5)) = 60.000000
degrees(asin(0.5)) = 30.000000
degrees(atan(1.0)) = 45.000000
degrees(atan2(1.0, 1.0)) = 45.000000
cos(radians(60.0)) = 0.500000
hypot(3.0, 4.0) = 5.000000
sin(radians(30.0)) = 0.500000
tan(radians(45.0)) = 1.000000
degrees(pi / 180.0) = 1.000000
radians(180.0 / pi) = 1.000000
$ make clean
```

## TODO

- [ ] finish `cumath.c`
- [ ] finish `pycumath.c`
