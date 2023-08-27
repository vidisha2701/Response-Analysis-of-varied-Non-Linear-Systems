%u=u+a0 * cos(ii*omega*t);
%u_dot=u_dot-a0*(ii*omega*sin(ii*omega*t));
a0=5;omega=1;u=0;ut=0;up=0;utp=0;
t=0:0.01:50
ii=1;
for ip=1:1:7;
    u=u+a0 * cos(ii*omega*t);
    ut=ut+(-a0*(ii*omega*sin(ii*omega*t)));
    ii=2^ip;
end
figure(1)
plot(u,t)
xlabel("time"),ylabel("Displacement")
title("Chaotic Response")

figure(2)
plot(u,ut)
xlabel("displacement"),ylabel("Velocity")
title("Phase Portrait")