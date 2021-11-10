% Lab 2 Q1
% Liam Piper, November 2021

% syms sets up the intial condition functions
syms u(x)
% Each set of d#(u) is just a label 
Du = diff(u,x);
D2u = diff(u,x,2);
D3u = diff(u,x,3);
% ode defines the ODE to work on
ode = diff(u,x,4) + 2*diff(u,x,2) + u == 0;
% cond# is the inital conditions
cond1 = u(0) == 1;
cond2 = Du(0) == 0;
cond3 = D2u(0) == 0;
cond4 = D3u(0) == 0;
% conds sets up a matrix of the conditions 
conds = [cond1 cond2 cond3 cond4];
% disp is just for ease of reading the command
disp Output:
% uSol solves the ODE
uSol(x) = dsolve(ode,conds)
%uSol is now the soultion symboliclly

%This is the output of t=20
w = (cos(20)+(20*sin(20))/2);
fplot(w)

%function to help with ploting two functions
hold on

% plots the function on the graph
% ezplot(f,[min,max])
% ezplot(f,[xmin,xmax,ymin,ymax])
fplot(uSol,[-5,20]);

%The labeling of the graphs
title('Output of ODE: [cos(x)+(x*sin(x))/2]')
xlabel('Time');
ylabel('Y-Axis');
legend({'ODE(t=20)=(cos(20)+(20*sin(20))/2)','Output of ODE w/ t=x'},'Location','southwest')

hold off
