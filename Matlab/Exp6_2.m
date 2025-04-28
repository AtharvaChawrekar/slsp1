clc;                      % Clear command window
close all;                % Close all figure windows
clear all;                % Clear all variables from workspace

% Taking input for x(n) and its time indices
x = input('Enter input sequence of x(n): ');
n1 = input('Enter the time indices of x(n): ');

% Taking input for y(n) and its time indices
y = input('Enter the sequence of y(n):');
n2 = input('Enter the time indices of y(n):');

% Time reversal of y(n) to get y(-n)
n22 = -fliplr(n2);        % Flip time indices of y(n) and make them negative
y1 = fliplr(y);           % Flip the sequence y(n)

% Time index for cross-correlation result
n = min(n1) + min(n22) : max(n1) + max(n22);

% Initialize matrix A for partial product storage
A = zeros(min(length(x), length(y1)), length(x) + length(y1) - 1);

% Cross-correlation logic using convolution-style computation
if length(x) < length(y1)
    for i = 1:length(x)
        A(i, i:i+length(y1)-1) = y1(1,:);    % Place y1 at proper index
        A(i,:) = x(i) .* A(i,:);            % Multiply by x(i)
    end
else
    for i = 1:length(y1)
        A(i, i:i+length(x)-1) = x(1,:);     % Place x at proper index
        A(i,:) = y1(i) .* A(i,:);           % Multiply by y1(i)
    end
end

% Summing partial products to get final cross-correlation
c = zeros(1, length(x) + length(y1) - 1);
for i = 1:min(length(x), length(y1))
    c(1,:) = c(1,:) + A(i,:);              % Accumulate results
end

% Display the cross-correlation and its time indices
disp('The Cross correlation between the given sequences is');
disp(c);
disp('The Time index of the Cross correlation is');
disp(n);

% Plotting input sequence x(n)
subplot(3,1,1);
stem(n1, x, 'o');                         % Unfilled circle markers
xlabel('time');
ylabel('amplitude');
grid;
title('Given sequence x(n)');

% Plotting reversed sequence y(-n)
subplot(3,1,2);
stem(n22, y1, 'o');                       % Unfilled circle markers
xlabel('time');
ylabel('amplitude');
grid;
title('Sequence y(-n)');

% Plotting cross-correlation result
subplot(3,1,3);
stem(n, c, 'o');                          % Unfilled circle markers
xlabel('time');
ylabel('amplitude');
grid;
title('Cross correlation of x(n) and y(n)');



