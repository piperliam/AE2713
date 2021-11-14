function F = KeplersEq_H(e, M)
%{
This function uses Newtons equation
for the hyperbola e*sinh(F) - F = M for the hyperbolic
eccentric anomaly, given the eccentricity and the hyperbolic
mean anomaly.
Input:
e - eccentricity
M - hyperbolic mean anomaly (radians)
Output:
F - hyperbolic eccentric anomaly (radians)
%}
% ----------------------------------------------
%...Set an error tolerance:
error = 1.0e-8;
%...Starting value for F:
F = M;
%...Iterate on Equation 3.45 until F is determined to within
%...the error tolerance:
ratio = 1;
while abs(ratio) > error
   ratio = (e*sinh(F) - F - M)/(e*cosh(F) - 1);
   F = F - ratio;
end
end