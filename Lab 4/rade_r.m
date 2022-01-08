function [a, dec] = rade_r(r)
% rade_r(r) calculates the right ascension and the
% declination from the geocentric equatorial position vector
% 
% Input:
%   r       - position vector
% 
% Output:
%   a       - right ascension (degrees)
%   dec     - declination (degrees)

%...direction cosines of r
l = r(1)/norm(r);
m = r(2)/norm(r);
n = r(3)/norm(r);

%...declination
dec = asind(n);

%...right ascension
if m > 0
    a = acosd(l/cosd(dec));
else
    a = 360 - acosd(l/cosd(dec));
end

end

