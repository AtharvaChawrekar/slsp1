clc; clear; close all;   % Clear command window, workspace, and close all figures

tmin = -5; dt = 0.1; tmax = 5;  % Define time limits and time step
t = tmin:dt:tmax;              % Create a time vector from -5 to 5

% Define two signals
x1 = t.^4 + 4*t.^2 + 6;        % Signal x1(t) = t^4 + 4t^2 + 6 (even function)
x2 = t.^4 + 4*t.^2 + 6;        % Signal x2(t), same as x1(t)

% Check whether the signal is even, odd, or neither
if x1 == x2
    fprintf("Signal is Even");
elseif x2 == -x1
    fprintf("Signal is Odd");
else
    fprintf("Signal is neither even nor odd");

    % Calculate even and odd parts only if not purely even/odd
    xe = (x1 + x2) / 2;    % Even part formula
    xo = (x1 - x2) / 2;    % Odd part formula
end

% Plot x1
subplot(2,2,1);
plot(t, x1, 'r', 'LineWidth', 2);
xlabel('t'); ylabel('x(t)');
title('x1');
grid on;

% Plot x2
subplot(2,2,2);
plot(t, x2, 'b', 'LineWidth', 2);
xlabel('t'); ylabel('x(t)');
title('x2');
grid on;

