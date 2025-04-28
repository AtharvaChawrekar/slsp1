tmin = 0; tmax = 10; dt = 0.01;            % Define time range and sampling interval
t = tmin:dt:tmax;                          % Time vector from 0 to 10 seconds

x1 = exp(-4*t).*(t >= 0);                  % Signal x1(t): exponentially decaying starting at t = 0
x2 = exp(-6*t).*(t >= 0);                  % Signal x2(t): exponentially decaying starting at t = 0

x3 = conv(x1, x2);                         % Convolution of x1(t) and x2(t)
n3 = length(x3);                           % Length of the convolution result
t1 = 0:1:n3-1;                             % Time vector for x3 (in sample index)

% Plot x1(t)
subplot(3,1,1);
plot(t, x1);
xlabel('t'); ylabel('x1(t)');
title('signal x1(t)');

% Plot x2(t)
subplot(3,1,2);
plot(t, x2);
xlabel('t'); ylabel('x2(t)');
title('signal x2(t)');

% Plot the convolution result x3(t)
subplot(3,1,3);
plot(t1, x3);
xlim([0 600]);                             % Adjust x-axis range for better visibility
xlabel('t/dt'); ylabel('x3(t/ dt)');
title('signal, x3(t) = x1(t) * x2(t)');    % Added title for convolution plot
