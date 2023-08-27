% Define the function for the Rössler system
a = 0.1;
b = 0.1;
c = 14;
ode = @(t, y) [-y(2) - y(3); y(1) + a*y(2); b + y(3)*(y(1) - c)];

% Define the initial conditions and range for time
y0 = [0; 0; 0];
tspan = [0 100];

% Solve the system using ode45
[t, y] = ode45(ode, tspan, y0);

% Plot the solution
figure;
plot3(y(:, 1), y(:, 2), y(:, 3), 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('y');
zlabel('z');
title('Rössler System Solution');
grid on;
