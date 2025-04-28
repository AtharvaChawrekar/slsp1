clc; clear; close all; % Clear command window, workspace, and close all figures

% Define time range
tmin = -5;        % Minimum time
dt = 0.1;         % Time step
tmax = 5;         % Maximum time
t = tmin:dt:tmax; % Create time vector from tmin to tmax with step dt

% Define two signals
x1 = exp(2*t);    % Exponential signal: e^(2t)
x2 = exp(-2*t);   % Exponential signal: e^(-2t)

% Check if the signal is even, odd, or neither
if x1 == x2
   fprintf("Signal is Even");         % If x1 equals x2, it's even
elseif x2 == -x1
   fprintf("Signal is Odd");          % If x2 equals -x1, it's odd
else
   fprintf("Signal is neither even nor odd"); % Otherwise, it's neither
       
   % Compute even and odd parts of the signal
   xe = (x1 + x2) / 2;  % Even part: (x(t) + x(-t)) / 2
   xo = (x1 - x2) / 2;  % Odd part:  (x(t) - x(-t)) / 2  
end

% Duplicate plotting section (repeats the same plots again)
subplot(2,2,1);
plot(t, x1, 'g', 'LineWidth', 2);
xlabel('t'); ylabel('x(t)');
title('x1');
grid on;

subplot(2,2,2);
plot(t, x2, 'b', 'LineWidth', 2);
xlabel('t'); ylabel('x(t)');
title('x2');
grid on;

subplot(2,2,3);
plot(t, xe, 'r', 'LineWidth', 2);
xlabel('t'); ylabel('xe(t)');
title('even');
grid on;

subplot(2,2,4);
plot(t, xo, 'b', 'LineWidth', 2);
xlabel('t'); ylabel('xo(t)');
title('odd');
grid on;
