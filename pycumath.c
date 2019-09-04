#include "Python.h"
#include "cumath.h"

static PyObject *math_1(PyObject *args, double (*func) (double)) {
    double x = PyFloat_AsDouble(args);
    if (x == -1.0 && PyErr_Occurred())
        return NULL;
    double y = (*func)(x);
    return PyFloat_FromDouble(y);
}

static PyObject *math_2(PyObject *args, double (*func) (double, double), char *funcname) {
    PyObject *ox, *oy;
    if (!PyArg_UnpackTuple(args, funcname, 2, 2, &ox, &oy))
        return NULL;
    double x = PyFloat_AsDouble(ox);
    if (x == -1.0 && PyErr_Occurred())
        return NULL;
    double y = PyFloat_AsDouble(oy);
    if (y == -1.0 && PyErr_Occurred())
        return NULL;
    double z = (*func)(x, y);
    return PyFloat_FromDouble(z);
}

#define FUNC1(func)                                                \
    static PyObject *math_##func(PyObject *self, PyObject *args) { \
        return math_1(args, cu##func);                             \
    }

#define FUNC2(func)                                                \
    static PyObject *math_##func(PyObject *self, PyObject *args) { \
        return math_2(args, cu##func, #func);                      \
    }

/* power and logarithmic function */
FUNC1(exp);
FUNC1(expm1);
FUNC2(log);
FUNC1(log1p);
FUNC1(log2);
FUNC1(log10);
FUNC2(pow);
FUNC1(sqrt);

/* trigonometric function */
FUNC1(acos);
FUNC1(asin);
FUNC1(atan);
FUNC2(atan2);
FUNC1(cos);
FUNC2(hypot);
FUNC1(sin);
FUNC1(tan);

/* angular conversion */
FUNC1(degrees);
FUNC1(radians);

/* hyperbolic function */
FUNC1(acosh);
FUNC1(asinh);
FUNC1(atanh);
FUNC1(cosh);
FUNC1(sinh);
FUNC1(tanh);

static PyMethodDef cumath_methods[] = {
    {"exp", math_exp, METH_O, NULL},
    {"expm1", math_expm1, METH_O, NULL},
    {"log", math_log, METH_VARARGS, NULL},
    {"log1p", math_log1p, METH_O, NULL},
    {"log2", math_log2, METH_O, NULL},
    {"log10", math_log10, METH_O, NULL},
    {"pow", math_pow, METH_VARARGS, NULL},
    {"sqrt", math_sqrt, METH_O, NULL},
    {"acos", math_acos, METH_O, NULL},
    {"asin", math_asin, METH_O, NULL},
    {"atan", math_atan, METH_O, NULL},
    {"atan2", math_atan2, METH_VARARGS, NULL},
    {"cos", math_cos, METH_O, NULL},
    {"hypot", math_hypot, METH_VARARGS, NULL},
    {"sin", math_sin, METH_O, NULL},
    {"tan", math_tan, METH_O, NULL},
    {"degrees", math_degrees, METH_O, NULL},
    {"radians", math_radians, METH_O, NULL},
    {"acosh", math_acosh, METH_O, NULL},
    {"asinh", math_asinh, METH_O, NULL},
    {"atanh", math_atanh, METH_O, NULL},
    {"cosh", math_cosh, METH_O, NULL},
    {"sinh", math_sinh, METH_O, NULL},
    {"tanh", math_tanh, METH_O, NULL},
    {NULL},
};

static struct PyModuleDef cumath_module = {
    PyModuleDef_HEAD_INIT,
    "cumath",
    NULL,
    -1,
    cumath_methods,
    NULL,
    NULL,
    NULL,
    NULL
};

PyMODINIT_FUNC PyInit_cumath(void) {
    PyObject *module = PyModule_Create(&cumath_module);
    if (module == NULL)
        goto finally;

    PyModule_AddObject(module, "pi", PyFloat_FromDouble(cupi));
    PyModule_AddObject(module, "e", PyFloat_FromDouble(cue));

finally:
    return module;
}
