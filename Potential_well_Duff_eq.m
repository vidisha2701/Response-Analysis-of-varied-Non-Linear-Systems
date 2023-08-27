x=-5:0.01:5
Fx=0.5*(x.^2)-0.025*(x.^4)
h1=2.5
xdot1=2*sqrt(h1-Fx);
xdot2=-2*sqrt(h1-Fx);

h2=3
xdot11=2*sqrt(h2-Fx);
xdot12=-2*sqrt(h2-Fx);

h3=4
xdot21=2*sqrt(h3-Fx);
xdot22=-2*sqrt(h3-Fx);

figure(1)
%plot(x,V)
%hold on
plot(x,xdot1)
hold on
plot(x,xdot2)
title("Potential Well when h=2.5")

figure(2)
%plot(x,V)
%hold on
plot(x,xdot11)
hold on
plot(x,xdot12)
title("Potential Well when h=3")

figure(3)
%plot(x,V)
%hold on
plot(x,xdot21)
hold on
plot(x,xdot22)
title("Potential Well when h=4")

