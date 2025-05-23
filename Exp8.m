clc;                          % Clear command window
clear;                        % Clear all variables from workspace
close all;                    % Close all figure windows

n = -10:1:10;                 % Define the discrete-time index range from -10 to 10
A = 0.8;                      % Amplitude factor

x1 = A.^n;                    % Define the original exponential signal x(n)
x2 = A.^(-n);                 % Time-reversed signal x(-n)

% Check if the signal is even, odd, or neither
if (x2 == x1)
    disp('The given signal is even signal');
elseif (x2 == (-x1))
    disp('The given signal is odd signal');
else
    disp('The given signal is neither even nor odd');
end

% Compute even and odd components
xe = (x1 + x2) / 2;           % Even part of the signal
xo = (x1 - x2) / 2;           % Odd part of the signal

% Plot original signal x(n)
subplot(2,2,1);
stem(n, x1);
xlabel('discrete time n ---->');
ylabel('x(n)');
title('original signal x(n)');

% Plot time-reversed signal x(-n)
subplot(2,2,2);
stem(n, x2);
xlabel('discrete time n ---->');
ylabel('amplitude');
title('time reflected signal x(-n)');

% Plot even part of signal
subplot(2,2,3);
stem(n, xe);
xlabel('discrete time n ---->');
ylabel('amplitude');
title('even part of a signal x(n)');

% Plot odd part of signal
subplot(2,2,4);
stem(n, xo);
xlabel('discrete time n ---->');
ylabel('amplitude');
title('odd part of a signal x(n)');

% Plot reconstructed signal by adding even and odd parts
figure;
stem(n, xe + xo);
xlabel('discrete time n ---->');
ylabel('x(n)');
title('reconstructed original signal');

% Compute real and imaginary parts of the exponential signal x(n)
xr = real(x1);               % Real part of original signal
xi = imag(x1);               % Imaginary part of original signal (should be zero here)

% Plot real part of the original signal
figure;
subplot(5,1,1);
stem(n, xr);
xlabel('discrete time n ---->');
ylabel('xr(n)');
title('real part of exponential signal');
grid on;

% Plot imaginary part of the original signal
subplot(5,1,2);
stem(n, xi);
xlabel('discrete time n ---->');
ylabel('xi(t)');
title('imaginary part of exponential signal');
grid on;

% Define a complex exponential signal
f = 1;                       % Frequency
x3 = exp(j * 2 * pi * f * n); % Complex exponential signal

% Plot complex exponential signal
subplot(5,1,3);
stem(n, x3);
xlabel('discrete time n ---->');
ylabel('x3(n)');
title('complex exponential signal');
grid on;

% Extract and plot real part of complex exponential signal
x4 = real(x3);
subplot(5,1,4);
stem(n, x4);
xlabel('time ---->');
ylabel('x4(n)');
title('real part of complex signal');
grid on;

% Extract and plot imaginary part of complex exponential signal
x5 = imag(x3);
subplot(5,1,5);
stem(n, x5);
xlabel('time ---->');
ylabel('x5(n)');
title('imaginary part of complex signal');
grid on;
