clc; clear; close all;

% Input the first signal x1[n]
x1 = input('enter the x1[n] sequence=');     % Example: [0 2 4 6]

% Input the second signal x2[n]
x2 = input('enter the x2[n] sequence=');     % Example: [3 5 -2 -5]

% Check if lengths of both input signals are equal
if length(x1) ~= length(x2)
    disp('length of x2 must be equal to the length of x1');
    return;                                  % Exit the program if lengths are not equal
end

% Input the impulse response h[n] of the system
h = input('enter the h[n] sequence=');       % Example: [1 0 -1] or any desired impulse response

% Input constants a and b
b = input('enter the constant b=');          % Example: 3
a = input('enter the constant a=');          % Example: 2

% Compute individual scaled responses
y01 = conv(a * x1, h);                       % Response for a * x1[n]
y02 = conv(b * x2, h);                       % Response for b * x2[n]

% Add the individual responses
y1 = y01 + y02;                              % Total output using linearity

% Combine the inputs and apply convolution once
x = a * x1 + b * x2;                         % Combined input signal
y2 = conv(x, h);                             % Output for combined input

% Determine the length of the output sequence
L = length(x1) + length(h) - 1;
n = 0:L-1;                                   % Time index

% Plot the sum of individual responses
subplot(2,1,1);
stem(n, y1);
xlabel('n --->'); ylabel('amp --->');
title('Sum of the individual responses');

% Plot the response to the combined input
subplot(2,1,2);
stem(n, y2);
xlabel('n --->'); ylabel('amp --->');
title('Response to the combined input');

% Check linearity: if y1 equals y2, the system is linear
if isequal(y1, y2)
    disp('The system is a Linear system');
else
    disp('The system is NOT a Linear system');
end
