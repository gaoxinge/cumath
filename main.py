import cumath

# constants
print("pi = %f" % cumath.pi)
print("e = %f" %  cumath.e)

# power and logarithmic function
print("exp(1.0) = %f" % cumath.exp(1.0))
print("expm1(1.0) = %f" % cumath.expm1(1.0))
print("log(4.0, 2.0) = %f" % cumath.log(4.0, 2.0))
print("log1p(e - 1.0) = %f" % cumath.log1p(cumath.e - 1.0))
print("log2(2.0) = %f" % cumath.log2(2.0))
print("log10(10.0) = %f" % cumath.log10(10.0))
print("pow(2.0, 2.0) = %f" %  cumath.pow(2.0, 2.0))
print("sqrt(4.0) = %f" % cumath.sqrt(4.0))

# trigonometric function
print("degrees(acos(0.5)) = %f" % cumath.degrees(cumath.acos(0.5)))
print("degrees(asin(0.5)) = %f" % cumath.degrees(cumath.asin(0.5)))
print("degrees(atan(1.0)) = %f" % cumath.degrees(cumath.atan(1.0)))
print("degrees(atan2(1.0, 1.0)) = %f" % cumath.degrees(cumath.atan2(1.0, 1.0)))
print("cos(radians(60.0)) = %f" % cumath.cos(cumath.radians(60.0)))
print("hypot(3.0, 4.0) = %f" % cumath.hypot(3.0, 4.0))
print("sin(radians(30.0)) = %f" % cumath.sin(cumath.radians(30.0)))
print("tan(radians(45.0)) = %f" % cumath.tan(cumath.radians(45.0)))

# angular coversion
print("degrees(pi / 180.0) = %f" % cumath.degrees(cumath.pi / 180.0))
print("radians(180.0 / pi) = %f" % cumath.radians(180.0 / cumath.pi))
