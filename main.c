#include <stdio.h>
#include "cumath.h"

int main() {
    /* constants */
    printf("cupi = %f\n", cupi);
    printf("cue = %f\n", cue);

    /* power and logarithmic function */
    printf("cuexp(1.0) = %f\n", cuexp(1.0));
    printf("cuexpm1(1.0) = %f\n", cuexpm1(1.0));
    printf("culog(4.0, 2.0) = %f\n", culog(4.0, 2.0));
    printf("culog1p(cue - 1.0) = %f\n", culog1p(cue - 1.0));
    printf("culog2(2.0) = %f\n", culog2(2.0));
    printf("culog10(10.0) = %f\n", culog10(10.0));
    printf("cupow(2.0, 2.0) = %f\n", cupow(2.0, 2.0));
    printf("cusqrt(4.0) = %f\n", cusqrt(4.0));
    
    /* trigonometric function */
    printf("cudegrees(cuacso(0.5)) = %f\n", cudegrees(cuacos(0.5)));
    printf("cudegrees(cuasin(0.5)) = %f\n", cudegrees(cuasin(0.5)));
    printf("cudegrees(cuatan(1.0)) = %f\n", cudegrees(cuatan(1.0)));
    printf("cudegrees(cuatan2(1.0, 1.0)) = %f\n", cudegrees(cuatan2(1.0, 1.0)));
    printf("cucos(curadians(60.0)) = %f\n", cucos(curadians(60.0)));
    printf("cuhypot(3.0, 4.0) = %f\n", cuhypot(3.0, 4.0));
    printf("cusin(curadians(30.0)) = %f\n", cusin(curadians(30.0)));
    printf("cutan(curadians(45.0)) = %f\n", cutan(curadians(45.0)));

    /* angular coversion */
    printf("cudegrees(cupi / 180.0) = %f\n", cudegrees(cupi / 180.0));
    printf("curadians(180.0 / cupi) = %f\n", curadians(180.0 / cupi));
    return 0;
}
