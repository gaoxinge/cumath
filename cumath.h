#ifndef CU_MATH_H
#define CU_MATH_H
#ifdef __cplusplus
extern "C" {
#endif

/* constants */
extern const double cupi;

/* power and logarithmic function */
// double cuexp(double);
// double cuexpm1(double);
// double culog(double, double);
// double culog1p(double);
// double culog2(double);
// double culog10(double);
// double cupow(double);
double cusqrt(double);

/* trigonometric function */
double cuacos(double);
double cuasin(double);
double cuatan(double);
double cuatan2(double, double);
double cucos(double);
double cuhypot(double, double);
double cusin(double);
double cutan(double);

/* angular conversion */
double cudegrees(double);
double curadians(double);

/* hyperbolic function */
double cuacosh(double);
double cuasinh(double);
double cuatanh(double);
double cucosh(double);
double cusinh(double);
double cutanh(double);

#ifdef __cplusplus
}
#endif
#endif
