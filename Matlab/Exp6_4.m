clc;                     % Clear command window
close all;               % Close all figure windows
clear;               % Clear all variables from workspace

x = [1,2,3,4,5];          % Define first input signal x(n)
y = [4,1,5,2,6];          % Define second input signal y(n)

% Plotting the first input signal x(n)
subplot(3,1,1);
stem(x);                 % Discrete-time plot of x(n)
xlabel('n');             
ylabel('x(n)');
title('input signal');   % Title for x(n)

% Plotting the second input signal y(n)
subplot(3,1,2);
stem(y);                 % Discrete-time plot of y(n)
xlabel('n');
ylabel('y(n)');
title('input signal');   % Title for y(n)

% Cross-correlation of x with itself (auto-correlation)
z = xcorr(x,x);          

% Plotting the resulting signal z(n)
subplot(3,1,3);
stem(z);                 % Discrete-time plot of correlation result
xlabel('n');
ylabel('z(n)');
title('resultant signal signal');  % Title for correlation result
