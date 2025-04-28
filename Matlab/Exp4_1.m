tmin = 0; tmax = 10; dt = 0.01;       % Define start, end, and time step
t = tmin:dt:tmax;                     % Time vector from 0 to 10

x1 = 2.*(t >= 0);                     % Step signal x1(t) with amplitude 2
x2 = 1.*(t >= 0);                     % Step signal x2(t) with amplitude 1

x3 = conv(x1, x2);                    % Convolution of x1 and x2
n3 = length(x3);                      % Length of the convolved signal
t1 = 0:1:n3-1;                        % Time axis for convolved signal

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

% Plot convolution result x3(t)
subplot(3,1,3);
plot(t1, x3);
xlim([0 600]);                        % Limit x-axis for better visibility
xlabel('t/dt'); ylabel('x3(t/ dt');
title('signal, x3(t) = x1(t) * x2(t)');
