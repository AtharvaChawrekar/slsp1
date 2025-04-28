clc; clear; close all; % Clear command window, workspace, and close all figures

tmin = -5; dt = 0.1; tmax = 5;  % Define time limits and step size
t = tmin:dt:tmax;              % Time vector from -5 to 5 with step of 0.1

x1 = t.^2 - 5*t + 10;          % Define first signal: x1(t) = t^2 - 5t + 10
x2 = t.^2 + 5*t + 10;          % Define second signal: x2(t) = t^2 + 5t + 10

if x1 == x2
   fprintf("Signal is Even");
elseif x2 == -x1
   fprintf("Signal is Odd");
else
   fprintf("Signal is neither even nor odd");

   % Compute even and odd parts of the signal
   xe = (x1 + x2) / 2;  % Even component: [x(t) + x(-t)] / 2
   xo = (x1 - x2) / 2;  % Odd component: [x(t) - x(-t)] / 2

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

   % Plot even part of the signal
   subplot(2,2,3);
   plot(t, xe, 'r', 'LineWidth', 2);
   xlabel('t'); ylabel('xe(t)');
   title('even');
   grid on;

   % Plot odd part of the signal
   subplot(2,2,4);
   plot(t, xo, 'b', 'LineWidth', 2);
   xlabel('t'); ylabel('xo(t)');
   title('odd');
   grid on;
end
