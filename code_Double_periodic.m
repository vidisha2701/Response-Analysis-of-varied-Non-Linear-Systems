t=0:0.001:10;

y1=5*sin(2*t);
y1d=10*cos(2*t);

y2=5*sin(4*t);
y2d=20*cos(4*t);

y=y1+y2;
yd=y1d+y2d;

figure;
title('Double Periodic Response')
plot(t,y)
xlabel("time,t"),ylabel("Response,y1(t)")

figure;
title('Phase Portrait')
plot(y,yd)
xlabel("y"),ylabel('velocity,y1d')