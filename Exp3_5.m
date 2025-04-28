clc; clear; close all;

tmin = -5; dt = 0.1; tmax = 5;   % Define time range and time step
t = tmin:dt:tmax;               % Time vector from -5 to 5

% Define the signals
x1 = cos(t) + sin(t) + cos(t).*sin(t);   % Signal x1(t)
x2 = cos(t) - sin(t) - cos(t).*sin(t);   % Signal x2(t)

% Check symmetry of the signal
if x1 == x2
   fprintf("Signal is Even");
elseif x2 == -x1
   fprintf("Signal is Odd");
else
   fprintf("Signal is neither even nor odd");

   % Compute even and odd parts
   xe = (x1 + x2)/2;
   xo = (x1 - x2)/2;

   % Plot even part
   subplot(2,2,3);
   plot(t, xe, 'r', 'LineWidth', 2);
   xlabel('t'); ylabel('xe(t)');
   title('even');
   grid on;

   % Plot odd part
   subplot(2,2,4);
   plot(t, xo, 'm', 'LineWidth', 2);
   xlabel('t'); ylabel('xo(t)');
   title('odd');
   grid on;
end

% Plot original signal x1
subplot(2,2,1);
plot(t, x1, 'g', 'LineWidth', 2);
xlabel('t'); ylabel('x(t)');
title('x1');
grid on;

% Plot original signal x2
subplot(2,2,2);
plot(t, x2, 'b', 'LineWidth', 2);
xlabel('t'); ylabel('x(t)');
title('x2');
grid on;
