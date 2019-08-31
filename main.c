#include <stdio.h>
#include "cumath.h"

int main() {
    double a = 4;
    double b = cusqrt(a);
    printf("%f\n", b);
    return 0;
}
