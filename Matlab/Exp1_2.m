% Define the time vector
tmin=-5; dt=0.1; tmax=5; 
t=tmin:dt:tmax;

% ------------------- Exponentially Decaying Sinusoidal Signal -------------------
T=1; a=100; b=0.5; F=1/T;
x=a*exp(-b*t).*sin(2*pi*F*t); % Sinusoid multiplied with decaying exponential
subplot(2,2,1);plot(t,x);
xlabel('t');ylabel('x(t)');title('Exponentially decaying sinusoidal signal');

% ------------------- Exponentially Increasing Sinusoidal Signal -------------------
T=1; a=100; b=0.5; F=1/T;
x=a*exp(b*t).*sin(2*pi*F*t); % Sinusoid multiplied with growing exponential
subplot(2,2,2);plot(t,x);
xlabel('t');ylabel('x(t)');title('Exponentially rising sinusoidal signal');

% ------------------- Exponential Increase Signal -------------------
a=10; b=0.3;
x=a*exp(b*t); % Exponential growth
subplot(2,2,3);plot(t,x);
xlabel('t');ylabel('x(t)');title('Exponentially increase signal');

% ------------------- Exponential Decrease Signal -------------------
a=10; b=0.3;
x=a*exp(-b*t); % Exponential decay
subplot(2,2,4);plot(t,x);
xlabel('t');ylabel('x(t)');title('Exponentially decrease signal');
