% Forced Duffing oscillator parameters
delta = 0.3;
alpha = -1;
beta = 1;
gamma = 0.2;
omega = 0.6;

% Time interval and initial conditions
tspan = [0 100];
x0 = [0.5; 0];

% Solve the differential equation
[t,x] = ode45(@(t,x) [x(2); -delta*x(2) - alpha*x(1) - beta*x(1)^3 + gamma*cos(omega*t)], tspan, x0);

% Plot the time response curve
figure;
plot(t, x(:,1), 'b', 'LineWidth', 2);
xlabel('Time');
ylabel('Displacement');
title('Forced Duffing Oscillator Time Response Curve');

% Plot the phase portrait
figure;
plot(x(:,1), x(:,2), 'r', 'LineWidth', 2);
xlabel('Displacement');
ylabel('Velocity');
title('Forced Duffing Oscillator Phase Portrait');
