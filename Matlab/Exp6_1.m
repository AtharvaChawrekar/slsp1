clc;
close all;
clear;

% Take input from the user for the sequences x and h
x = input('Enter input sequence (as a vector): ');
h = input('Enter the impulse sequence (as a vector): ');

% Plot the input signal x(n)
subplot(3,1,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('Input Signal');

% Plot the impulse signal h(n)
subplot(3,1,2);
stem(h);
xlabel('n');
ylabel('h(n)');
title('Impulse Signal');

% Compute the cross-correlation of x and h
y = xcorr(x, h);

% Plot the correlation signal y(n)
subplot(3,1,3);
stem(y);
xlabel('n');
ylabel('y(n)');
title('Correlation Signal');

% Display the resultant signal in the command window
disp('The resultant signal is:');
disp(y);
