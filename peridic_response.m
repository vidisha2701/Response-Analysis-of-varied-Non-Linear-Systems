t=0:0.001:10;
% Periodic 
y1=5*sin(2*t);
y1d=10*cos(2*t);

%y2=5*sin(4*t);
%y2d=20*cos(4*t);

% Quasi_periodic
%y3=5*sin(2*sqrt(2)*t);
%y3d=10*sqrt(2)*cos(2*sqrt(2)*t);

% two periodic
%y4=y1+y2;
%y4d=y1d+y2d;
%y5=y1+y3;
%y5d=y1d+y3d;

figure;
title('Periodic Response')
plot(t,y1)
xlabel("time,t"),ylabel("Response,y1(t)")

figure;
title('Phase Portrait')
plot(y1,y1d)
xlabel("y"),ylabel('velocity,y1d')