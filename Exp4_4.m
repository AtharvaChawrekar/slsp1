tmin = 0; 
tmax = 10; 
dt = 0.01; 
t = tmin:dt:tmax;                        % Time vector

x1 = t.*(t >= 0);                        % Ramp signal for t >= 0
x2 = exp(-4*t).*(t >= 0);               % Exponentially decaying signal for t >= 0

x3 = conv(x1, x2);                      % Convolution of x1 and x2
n3 = length(x3);                        
t1 = (0:n3-1) * dt;                     % Adjust time axis for convolution output

% Plot x1(t)
subplot(3,1,1);
plot(t, x1);
xlabel('t'); ylabel('x1(t)');
title('Signal x1(t)');

% Plot x2(t)
subplot(3,1,2);
plot(t, x2);
xlabel('t'); ylabel('x2(t)');
title('Signal x2(t)');

% Plot x3(t) = x1(t) * x2(t)
subplot(3,1,3);
plot(t1, x3);
xlabel('t'); ylabel('x3(t)');
title('Signal x3(t) = x1(t) * x2(t)');
xlim([0 6]);                            % Optional: adjust for better visibility
