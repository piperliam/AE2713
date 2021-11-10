% Lab 2 Q2
% Liam Piper, November 2021

%initial value of y and dy/dt
y1 = [0 1];  

%Starting time for the interval
t0 = 0;     

%Ending time for the interval
tf = 10;    

%tspan is the vector for time
tspan = [t0, tf];   
%ode(function) is just our ode in a rather odd format
odefun = @(t, y) [y(2);...                %1st ODE
                   -(t^2*y(2) + 2*y(1))/t]; %2nd ODE
%...Solve using ode45
%ode45 function call
[t, y] = ode45(odefun, tspan, y1); 

%This is a backup for the plotting
z = [t,y];

%Setting up of the plot(s)
figure 2
plot(t,y(:,1))
plot(z)

%The lableing of the axis and other information about the table
xlabel('time')
ylabel('Output')
title('Lab 2 -- Example 2')
ax = gca;
ax.FontSize = 14;
