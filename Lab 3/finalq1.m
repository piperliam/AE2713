%Lab 3 q1
%Liam Piper


%givens:
%perogee in KM
rp=7500;
%apogee in KM
ra=16000;
%Time given in seconds (40mins)
tg=2400;
%given true anomaly at point 1 in degrees
ta1=1.39626;



u = (3.86*10^14);

a = (rp+ra)/2;

e = (ra-rp)/(ra+rp);

T1 = ((2*pi)/(sqrt(u)))*a^(3/2);

E0 = 2*atan(sqrt((1-e)/(1+e))*tan(ta1/2));

M0 = E0-e*sin(E0);

t0 = (M0/2*pi)*T(1);

tf = t0+tg;

Mf = (2*pi)*tf/T1;

%equation is 
%Ef-esin(Ef)=M
if Mf < pi
   Ef = Mf + e/2;
else
   Ef = Mf - e/2;
end
EP = Ef;
%just some conversion stuff
Ef1 = Ef*(1.024845*10^-5);


thetaf = 2*atan(sqrt(((1-e)/(1+e)))*tan(Ef1/2));
theta = thetaf*57.2958;

fprintf('-----------------------------------------------------')
fprintf('\n a=%g\n',a)
fprintf('\n Eccentricity=%g\n',e)
fprintf('\n The Period=%g\n',T1)
fprintf('\n E=%g\n',E0)
fprintf('\n M(0)=%g\n',M0)
fprintf('\n t(0)=%g\n',t0)
fprintf('\n tf=%g\n',tf)
fprintf('\n Mf=%g\n',Mf)
fprintf('\n Ef=%g\n',Ef1)
fprintf('\n True Anomaly Radians=%g\n',thetaf)
fprintf('\n True Anomaly degrees=%g\n',theta)
fprintf('\n Tggg=%g\n',EP)

