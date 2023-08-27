% Define parameters and initial conditions
a = linspace(0.1, 1.4, 1000); % range of parameter values for a

b = 0.5; % fixed value for b
x = 0.2; % initial condition for x
y = 0.1; % initial condition for y
n = 1000; % number of iterations to discard
m = 100; % number of iterations to keep

xvals = zeros(1, m); % preallocate memory for x values


for i = 1:length(a)
    
    for j = 1:n
        xnew = 1 - a(i) * x^2 + y;
        y = b * x;
        x = xnew;
    end
    % Keep the next m values
    for j = 1:m
        xnew = 1 - a(i) * x^2 + y;
        y = b * x;
        x = xnew;
        xvals(j) = x;
    end

    % Plot the points on the bifurcation diagram
    plot(a(i)*ones(1,m), xvals, '.', 'MarkerSize', 1);
    hold on;
end


xlabel('a');
ylabel('x');
title('LOGISTIC MAP');
