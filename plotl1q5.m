
x = linspace(0, 5);
y1=exp(-0.5*x).*sin(8*x) ; 
y2=exp(-1.2*x).*sin(5.3*x) ;
y3=exp(-2.1*x).*sin(2.5*x) ;
figure(1)
plot(x, y1)
title("Figure 1 – Amplitude of a damped system.")
xlabel('Time') 
ylabel('Amplitude') 
hold on
plot(x, y2)
plot(x, y3)
hold off
grid
