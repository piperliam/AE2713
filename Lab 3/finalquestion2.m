% ASTRONAUTICS Lab 3 - Question 2

close all; clear all; clc
%...Orbital parameters:
%given
vp = 1.2; %km/sec
zp = 6600; %km
mu = 398600;  % km^3/s^2, gravitational parameter for Earth
theta(2) = 90; %deg,
theta(1) = theta(2)*(pi/180); %radians,
theta(4) = -90; %degrees
theta(3) = theta(4)*(pi/180);%then converting radians
%calculated
i = 0.67135;
u = 4897.2;
rp = 6378 + zp; %km
h = rp*vp;
e = (h^2/(mu*rp) - 1)*(1/cos(0));

%...Part (a)
%...evaluate orbit equation at given true anomaly
r(1) = (h^2/mu)*(1/(1+e*cos(theta(1))));

%starting ^
r(2) = (h^2/mu)*(1/(1+e*cos(theta(3))));


%...calcualte hyperbolic eccentric anomaly at 90 deg
F(1) = 2*atanh(sqrt((e - 1)/(e + 1))*tan(theta(1)/2));

%^
F(2) = 2*atanh(sqrt((e - 1)/(e + 1))*tan(theta(3)/2));

%...solve for the mean anomaly at 90 deg
Mh(1) = e*sinh(F(1)) - F(1);

%^
Mh(2) = e*sinh(F(2)) - F(2);


%...solve for time since perigee passing
t(1) = (h^3/mu^2)*(1/(e^2 - 1)^(3/2))*Mh(1)*i;

%^ 
t(2) = (h^3/mu^2)*(1/(e^2 - 1)^(3/2))*Mh(2)*i;


a = (-mu/-0.5*(mu^2/h^2)*(1-e^2))*0.5;
T = 2*pi*sqrt(a^3/mu);
dn = 0;
Thr = (T/60)/60;

Ans1 = t(1)*2;
Ans1hr = (Ans1/60)/60;


%...Part (b)
%...24 hours later 
ta(2) = t(1) + 24*60*60; 
%...new mean anonmaly
Mha(2) = (mu^2/h^3)*((e^2 - 1)^(3/2))*ta(2);
%...Pass the input data to the function kepler_H, which returns F:
Fa(2) = KeplersEq_H(e, Mha(2));
%...find the new true anomaly from eccentric anomaly
theta(2,1) = 2*atan(sqrt((e + 1)/(e - 1))*tanh(Fa(2)/2));
theta(2,2) = theta(2,1)*(180/pi);
%...calculate new s/c position
ra(2) = dn+(h^2/u)*(1/(1+e*cos(theta(2,1))));

%...Echo the input data and output to the command window:
fprintf('-----------------------------------------------------')
fprintf('\n Lab 3 Question 2')

fprintf('\n   Time to coast in seconds  = %g\n',Ans1)
fprintf('\n   Time to coast in hours  = %g\n',Ans1hr)

fprintf('\n Part(b)                 ')

fprintf('\n   s/c position (km)            = %g',ra(2))

fprintf('\n-----------------------------------------------------\n')