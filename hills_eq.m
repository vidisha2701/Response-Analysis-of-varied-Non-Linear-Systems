% Define the function for Hill's equation
a = @(t) 2 + 0.5*sin(2*pi*t/4);   % periodic function a(t)
q = 1;                            % constant q
omega = 2*pi/4;                   % angular frequency
ode = @(t, y) [y(2); (q*cos(omega*t) - a(t))*y(1)];

% Define the initial conditions
y0 = [1; 0];

% Define the range for time
tspan = [0 20];

% Solve the system using ode45
[t, y] = ode45(ode, tspan, y0);

% Plot the time response curve
figure;
plot(t, y(:, 1), 'b-', 'LineWidth', 2);
xlabel('Time');
ylabel('Displacement');
title("Hill's Equation Time Response Curve");
