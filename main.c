#include <stdio.h>
#include "cumath.h"

int main() {
    /* constants */
    printf("%f\n", cupi);

    /* power and logarithmic function */
    printf("%f\n", cusqrt(4.0));
    
    /* trigonometric function */
    printf("%f\n", cudegrees(cuacos(0.5)));
    printf("%f\n", cudegrees(cuasin(0.5)));
    printf("%f\n", cudegrees(cuatan(1.0)));
    printf("%f\n", cudegrees(cuatan2(1.0, 1.0)));
    printf("%f\n", cucos(curadians(60.0)));
    printf("%f\n", cuhypot(3.0, 4.0));
    printf("%f\n", cusin(curadians(30.0)));
    printf("%f\n", cutan(curadians(45.0)));

    /* angular coversion */
    printf("%f\n", cudegrees(cupi / 180.0));
    printf("%f\n", curadians(180.0 / cupi));
    return 0;
}
