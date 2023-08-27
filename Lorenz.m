% Define the constants
sigma = 10;
rho = 28;
beta = 8/3;

% Define the differential equations
f = @(t,x) [sigma*(x(2)-x(1)); x(1)*(rho-x(3))-x(2); x(1)*x(2)-beta*x(3)];

% Define the initial conditions
x0 = [1;1;1];

% Define the time interval
tspan = [0 100];

% Solve the differential equations
[t,x] = ode45(f,tspan,x0);

% Plot the solution
plot3(x(:,1),x(:,2),x(:,3))
xlabel('x')
ylabel('y')
zlabel('z')
title('Lorenz Map')