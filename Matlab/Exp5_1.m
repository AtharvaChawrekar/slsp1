% Program to plot discrete signals
tmin = -10;
tmax = 10;
dt = 1;
t = tmin:dt:tmax;

% Unit Step Signal
x1 = double(t >= 0); % 1 for t >= 0, else 0
subplot(2,2,1);
stem(t, x1);
xlabel('Time (n)');
ylabel('Amplitude');
title('Discrete Unit Step Signal');

% Discrete Signum Signal
x2 = double(t > 0) - double(t < 0); % 1 for t>0, -1 for t<0, 0 for t=0
subplot(2,2,2);
stem(t, x2);
xlabel('Time (n)');
ylabel('Amplitude');
title('Discrete Signum Signal');

% Discrete Impulse Signal (delta)
x3 = double(t == 0); % 1 only at t=0
subplot(2,2,3);
stem(t, x3);
xlabel('Time (n)');
ylabel('Amplitude');
title('Discrete Impulse Signal');

% Discrete Ramp Signal
x4 = t .* (t >= 0); % Ramp from 0 onwards
subplot(2,2,4);
stem(t, x4);
xlabel('Time (n)');
ylabel('Amplitude');
title('Discrete Ramp Signal');
