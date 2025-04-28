clc; clear; close all;  % Clear command window, variables, and close all figures

% Define time range
tmin = -1; dt = 0.01; tmax = 1;
t = tmin:dt:tmax;  % Time vector from -1 to 1 with increment 0.01

% Define the original signal x1
x1 = 10 * sin(10 * pi * t + (pi / 4));  % Sine wave with phase shift

% Define the time-reversed version of x1
x2 = 10 * sin(-10 * pi * t + (pi / 4));  % Check for even/odd properties

% Check if the signal is even, odd, or neither
if x1 == x2
   fprintf("Signal is Even");
elseif x2 == -x1
   fprintf("Signal is Odd");
else
   fprintf("Signal is neither even nor odd");

   % Compute even part of the signal
   xe = (x1 + x2) / 2;

   % Compute odd part of the signal
   xo = (x1 - x2) / 2;

   % Plot the even part
   subplot(2,2,3);
   plot(t, xe, 'r', 'LineWidth', 2);
   xlabel('t'); ylabel('xe(t)');
   title('even');
   grid on;

   % Plot the odd part
   subplot(2,2,4);
   plot(t, xo, 'b', 'LineWidth', 2);
   xlabel('t'); ylabel('xo(t)');
   title('odd');
   grid on;
end

% Plot original signal x1
subplot(2,2,1);
plot(t, x1, 'r', 'LineWidth', 2);
xlabel('t'); ylabel('x(t)');
title('x1');
grid on;

% Plot time-reversed signal x2
subplot(2,2,2);
plot(t, x2, 'b', 'LineWidth', 2);
xlabel('t'); ylabel('x(t)');
title('x2');
grid on;
