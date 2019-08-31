#include "cumath.h"

const double pi = 3.141592653589793238462643383279502884197;

__global__ void cuda_degrees(double *x, double *y) {
    *y = *x * 180 / pi;
}

__global__ void cuda_radians(double *x, double *y) {
    *y = *x * pi / 180;  
}

__global__ void cuda_sin(double *x, double *y) {
    *y = sin(*x);
}

__global__ void cuda_sinh(double *x, double *y) {
    *y = sinh(*x);
}

__global__ void cuda_sqrt(double *x, double *y) {
    *y = sqrt(*x);
}

__global__ void cuda_tan(double *x, double *y) {
    *y = tan(*x);
}

__global__ void cuda_tanh(double *x, double *y) {
    *y = tanh(*x);
}

double cudegrees(double x) {
    double y;
    double *d_x, *d_y;

    cudaMalloc((void **) &d_x, sizeof(double));
    cudaMalloc((void **) &d_y, sizeof(double));

    cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice);

    cuda_degrees<<<1,1>>>(d_x, d_y);

    cudaMemcpy(&y, d_y, sizeof(double), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(d_y);

    return y;
}

double curadians(double x) {
    double y;
    double *d_x, *d_y;

    cudaMalloc((void **) &d_x, sizeof(double));
    cudaMalloc((void **) &d_y, sizeof(double));

    cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice);

    cuda_radians<<<1,1>>>(d_x, d_y);

    cudaMemcpy(&y, d_y, sizeof(double), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(d_y);

    return y;
}

double cusin(double x) {
    double y;
    double *d_x, *d_y;

    cudaMalloc((void **) &d_x, sizeof(double));
    cudaMalloc((void **) &d_y, sizeof(double));

    cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice);

    cuda_sin<<<1,1>>>(d_x, d_y);

    cudaMemcpy(&y, d_y, sizeof(double), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(d_y);

    return y;
}

double cusinh(double x) {
    double y;
    double *d_x, *d_y;

    cudaMalloc((void **) &d_x, sizeof(double));
    cudaMalloc((void **) &d_y, sizeof(double));

    cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice);

    cuda_sinh<<<1,1>>>(d_x, d_y);

    cudaMemcpy(&y, d_y, sizeof(double), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(d_y);

    return y;
}

double cusqrt(double x) {
    double y;
    double *d_x, *d_y;

    cudaMalloc((void **) &d_x, sizeof(double));
    cudaMalloc((void **) &d_y, sizeof(double));

    cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice);

    cuda_sqrt<<<1,1>>>(d_x, d_y);

    cudaMemcpy(&y, d_y, sizeof(double), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(d_y);

    return y;
}

double cutan(double x) {
    double y;
    double *d_x, *d_y;

    cudaMalloc((void **) &d_x, sizeof(double));
    cudaMalloc((void **) &d_y, sizeof(double));

    cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice);

    cuda_tanh<<<1,1>>>(d_x, d_y);

    cudaMemcpy(&y, d_y, sizeof(double), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(d_y);

    return y;
}

double cutanh(double x) {
    double y;
    double *d_x, *d_y;

    cudaMalloc((void **) &d_x, sizeof(double));
    cudaMalloc((void **) &d_y, sizeof(double));

    cudaMemcpy(d_x, &x, sizeof(double), cudaMemcpyHostToDevice);

    cuda_tanh<<<1,1>>>(d_x, d_y);

    cudaMemcpy(&y, d_y, sizeof(double), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(d_y);

    return y;
}

