#include "cumath.h"

#define DEVICE_WRAPPER_ARG1(func)                       \
    __global__ void cuda_##func(double *x, double *y) { \
        *y = func(*x);                                  \
    }

#define HOST_WRAPPER_ARG1(func)                                      \
    double cu##func(double x) {                                      \
        double y;                                                    \
        double *d_x, *d_y;                                           \
        cudaMalloc((void **) &d_x, sizeof(double));                  \
        cudaMalloc((void **) &d_y, sizeof(double));                  \
        cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice); \
        cuda_##func<<<1,1>>>(d_x, d_y);                              \
        cudaMemcpy(&y, d_y, sizeof(double), cudaMemcpyDeviceToHost); \
        cudaFree(d_x);                                               \
        cudaFree(d_y);                                               \
        return y;                                                    \
    }

#define DEVICE_WRAPPER_ARG2(func)                                  \
    __global__ void cuda_##func(double *x, double *y, double *z) { \
        *z = func(*x, *y);                                         \
    }

#define HOST_WRAPPER_ARG2(func)                                      \
    double cu##func(double x, double y) {                            \
        double z;                                                    \
        double *d_x, *d_y, *d_z;                                     \
        cudaMalloc((void **) &d_x, sizeof(double));                  \
        cudaMalloc((void **) &d_y, sizeof(double));                  \
        cudaMalloc((void **) &d_z, sizeof(double));                  \
        cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice); \
        cudaMemcpy(d_y, &y, sizeof(double), cudaMemcpyHostToDevice); \
        cuda_##func<<<1,1>>>(d_x, d_y, d_z);                         \
        cudaMemcpy(&z, d_z, sizeof(double), cudaMemcpyDeviceToHost); \
        cudaFree(d_x);                                               \
        cudaFree(d_y);                                               \
        cudaFree(d_z);                                               \
        return z;                                                    \
    }

/* constants */
const double cupi = 3.141592653589793238462643383279502884197;
const double cue  = 2.718281828459045235360287471352662497757;

/* power and logarithmic function */
DEVICE_WRAPPER_ARG1(exp);
HOST_WRAPPER_ARG1(exp);
DEVICE_WRAPPER_ARG1(expm1);
HOST_WRAPPER_ARG1(expm1);
__global__ void cuda_log(double *x, double *y, double *z) {*z = log(*x) / log(*y);}
HOST_WRAPPER_ARG2(log);
DEVICE_WRAPPER_ARG1(log1p);
HOST_WRAPPER_ARG1(log1p);
DEVICE_WRAPPER_ARG1(log2);
HOST_WRAPPER_ARG1(log2);
DEVICE_WRAPPER_ARG1(log10);
HOST_WRAPPER_ARG1(log10);
DEVICE_WRAPPER_ARG2(pow);
HOST_WRAPPER_ARG2(pow);
DEVICE_WRAPPER_ARG1(sqrt);
HOST_WRAPPER_ARG1(sqrt);

/* trigonometric function */
DEVICE_WRAPPER_ARG1(acos);
HOST_WRAPPER_ARG1(acos);
DEVICE_WRAPPER_ARG1(asin);
HOST_WRAPPER_ARG1(asin);
DEVICE_WRAPPER_ARG1(atan);
HOST_WRAPPER_ARG1(atan);
DEVICE_WRAPPER_ARG2(atan2);
HOST_WRAPPER_ARG2(atan2);
DEVICE_WRAPPER_ARG1(cos);
HOST_WRAPPER_ARG1(cos);
DEVICE_WRAPPER_ARG2(hypot);
HOST_WRAPPER_ARG2(hypot);
DEVICE_WRAPPER_ARG1(sin);
HOST_WRAPPER_ARG1(sin);
DEVICE_WRAPPER_ARG1(tan);
HOST_WRAPPER_ARG1(tan);

/* angular conversion */
__global__ void cuda_degrees(double *x, double *y) {*y = *x * 180 / cupi;}
HOST_WRAPPER_ARG1(degrees);
__global__ void cuda_radians(double *x, double *y) {*y = *x * cupi / 180;}
HOST_WRAPPER_ARG1(radians);

/* hyperbolic function */
DEVICE_WRAPPER_ARG1(acosh);
HOST_WRAPPER_ARG1(acosh);
DEVICE_WRAPPER_ARG1(asinh);
HOST_WRAPPER_ARG1(asinh);
DEVICE_WRAPPER_ARG1(atanh);
HOST_WRAPPER_ARG1(atanh);
DEVICE_WRAPPER_ARG1(cosh);
HOST_WRAPPER_ARG1(cosh);
DEVICE_WRAPPER_ARG1(sinh);
HOST_WRAPPER_ARG1(sinh);
DEVICE_WRAPPER_ARG1(tanh);
HOST_WRAPPER_ARG1(tanh);
