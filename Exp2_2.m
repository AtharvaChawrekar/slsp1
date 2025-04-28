% Define time vector
t = -10:0.01:10; % Define a time range from -10 to 10 with step size 0.01

% Define original triangular signal x(t)
x = tripuls(t, 4); % Generate a triangular pulse centered at t=0 with width 4

% Compute the given signals with various transformations

x1 = tripuls(2*t + 3, 4);     
% x(2t + 3): Time compressed by factor of 2 and shifted left by 3 units

x2 = tripuls(t + 3, 4) / 2;   
% x(t + 3)/2: Shifted left by 3 units and amplitude scaled by 1/2

x3 = tripuls((t/2) - 3, 4);   
% x(t/2 - 3): Time expanded by factor of 2 and shifted right by 3 units

x4 = tripuls(-2*t + 3, 4);    
% x(-2t + 3): Time reversed, compressed by factor of 2, and shifted left by 3 units

% Plotting the signals
figure;

% Plot 1: Compressed and shifted signal x(2t+3)
subplot(2,2,1);
plot(t, x1, 'r', 'LineWidth', 2);
xlabel('t'); ylabel('x(2t+3)');
title('Compressed and Shifted Signal x(2t+3)');
grid on;

% Plot 2: Shifted and amplitude scaled signal x(t+3)/2
subplot(2,2,2);
plot(t, x2, 'g', 'LineWidth', 2);
xlabel('t'); ylabel('x(t+3)/2');
title('Shifted and Scaled Signal x(t+3)/2');
grid on;

% Plot 3: Expanded and shifted signal x(t/2 - 3)
subplot(2,2,3);
plot(t, x3, 'b', 'LineWidth', 2);
xlabel('t'); ylabel('x(t/2-3)');
title('Expanded and Shifted Signal x(t/2-3)');
grid on;

% Plot 4: Reversed, compressed, and shifted signal x(-2t + 3)
subplot(2,2,4);
plot(t, x4, 'm', 'LineWidth', 2);
xlabel('t'); ylabel('x(-2t+3)');
title('Reversed,Compressed,and Shifted Signal x(-2t+3)');
grid on;
