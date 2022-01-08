% ASTRONAUTICS Lab 4 - Example 4.1
% This program calculates the right ascension and declination from the 
% geocentric equatorial position vector using the data in Example 4.1.

close all; clear all; clc

r        = [6000 -9000 -3000];
[a, dec] = rade_r(r);

fprintf('\n -----------------------------------------------------\n')
fprintf('\n Question 1; [Parts a,b,c and d]')
fprintf('\n r               = [%g  %g  %g] (km)', r(1), r(2), r(3))
fprintf('\n right ascension = %g deg', a)
fprintf('\n declination     = %g deg', dec) 
fprintf('\n\n -----------------------------------------------------\n')
