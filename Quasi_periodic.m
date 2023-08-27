t=0:0.001:10;
 
y1=5*sin(2*t);
y1d=10*cos(2*t);

y2=5*sin(2*sqrt(2)*t);
y2d=10*sqrt(2)*cos(2*sqrt(2)*t);

y=y1+y2;
yd=y1d+y2d;

figure;

plot(t,y)
xlabel("time,t"),ylabel("Response,y(t)")
title('Quasi-Periodic Response')

figure;

plot(y,yd)
xlabel("y"),ylabel('velocity,yd')
title('Quasi-Periodic Phase Portrait')