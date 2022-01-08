% ASTRONAUTICS Lab 4 - Example 4.3
%   This program uses Algorithm 4.2 to obtain the orbital
%   elements from the state vector provided in Example 4.3.
% 
%   deg  - factor for converting between degrees and radians
%   mu   - gravitational parameter (km^3/s^2)
%   r    - position vector (km) in the geocentric equatorial frame
%   v    - velocity vector (km/s) in the geocentric equatorial frame
%   COE  - orbital elements [h e RA incl w TA a]
%          where h    = angular momentum (km^2/s)
%                e    = eccentricity
%                RA   = right ascension of the ascending node (rad)
%                incl = orbit inclination (rad)
%                w    = argument of perigee (rad)
%                TA   = true anomaly (rad)
%                a    = semimajor axis (km)
%   T    - Period of an elliptic orbit (s)

close all; clear all; clc
deg = pi/180;
mu  = 398600;

%...Data declaration for Example 4.3:
r = [ 2500  16000   4000];
v = [-3  -1  5];


%...Algorithm 4.2:
COE = orbital_elements(r,v,mu);

%...Echo the input data and output results to the command window:
fprintf('-----------------------------------------------------')
fprintf('\n Question 2 \n')
fprintf('\n Gravitational parameter (km^3/s^2) = %g\n', mu)
fprintf('\n State vector:\n')
fprintf('\n r (km)                              = [%g  %g  %g]', ...
                                                  r(1), r(2), r(3))
fprintf('\n v (km/s)                            = [%g  %g  %g]', ...
                                                  v(1), v(2), v(3))
disp(' ')
fprintf('\n Angular momentum (km^2/s)           = %g', COE(1))
fprintf('\n Eccentricity                        = %g', COE(2))
fprintf('\n Right ascension (deg)               = %g', COE(3)/deg)
fprintf('\n Inclination (deg)                   = %g', COE(4)/deg)
fprintf('\n Argument of perigee (deg)           = %g', COE(5)/deg)
fprintf('\n True anomaly (deg)                  = %g', COE(6)/deg)
fprintf('\n Semimajor axis (km):                = %g', COE(7))
 
%...if the orbit is an ellipse, output its period (Equation 2.73):
if COE(2)<1
    T = 2*pi/sqrt(mu)*COE(7)^1.5;
    fprintf('\n Period:')
    fprintf('\n   Seconds                           = %g', T) 
    fprintf('\n   Minutes                           = %g', T/60)
    fprintf('\n   Hours                             = %g', T/3600)
    fprintf('\n   Days                              = %g', T/24/3600)
end
fprintf('\n-----------------------------------------------------\n')

% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
