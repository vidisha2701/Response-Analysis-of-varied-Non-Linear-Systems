% Define the system of differential equations
mu = 1;
ode = @(t, y) [y(2); mu*(1-y(1)^2)*y(2)-y(1)];

% Define the range for time
tspan = [0 50];

% Define initial conditions
y0 = [2; 0];

% Solve the system using ode45
[t, y] = ode45(ode, tspan, y0);

% Plot the time response
figure;
plot(t, y(:, 1), 'b-', 'LineWidth', 2);
xlabel('Time');
ylabel('y');
title('Van der Pol Oscillator Time Response');

% Plot the phase portrait
figure;
quiver(y(:, 1), y(:, 2), gradient(y(:, 1)), gradient(y(:, 2)));
xlabel('y');
ylabel('dy/dt');
title('Van der Pol Oscillator Phase Portrait');
