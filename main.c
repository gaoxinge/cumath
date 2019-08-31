#include <stdio.h>
#include "cumath.h"

int main() {
    printf("%f\n", curadians(30.0));
    printf("%f\n", cusin(curadians(30.0)));
    printf("%f\n", cusqrt(4.0));
    return 0;
}
