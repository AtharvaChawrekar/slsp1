f1=input('enter the frequency of signal1 : ')      % Input frequency of first signal
T1=1/f1;                                           % Time period of first signal
t1=0:T1/f1:T1;                                     % Time vector for signal1
x=sin(2*pi*f1*t1);                                 % Sine wave x(t) with frequency f1

f2=input('enter the frequency of signal2 : ')      % Input frequency of second signal
T2=1/f2;                                           % Time period of second signal
t2=0:T2/f2:T2;                                     % Time vector for signal2
y=sin(2*pi*f2*t2);                                 % Sine wave y(t) with frequency f2

t22=-fliplr(t2);                                   % Time reversal of t2 → -t
y1=fliplr(y);                                      % Reversed signal y(t) → y(-t)

% Initialize matrix A for storing partial products
A=zeros(min(length(x),length(y1)),length(x)+length(y1)-1);

% Cross-correlation logic based on signal lengths
if length(x)<length(y1)
    for i=1:length(x)
        A(i,i:i+length(y1)-1)=y1(1,:);             % Align y1 in matrix A
        A(i,:)=x(i).*A(i,:);                       % Multiply x(i) with y1
    end
else
    for i=1:length(y1)
        A(i,i:i+length(x)-1)=x(1,:);               % Align x in matrix A
        A(i,:)=y1(i).*A(i,:);                      % Multiply y1(i) with x
    end
end

% Summing partial products to get cross-correlation result
c=zeros(1,length(x)+length(y1)-1);
for i=1:min(length(x),length(y1))
    c(1,:)=c(1,:)+A(i,:);                          % Accumulate row-wise sum
end

% Time vector for plotting correlation result
t=linspace(min(t1)+min(t22),max(t1)+max(t22),length(c)); 

% Plot signal x(t)
subplot(3,1,1)
plot(t1,x)
xlabel('time')
ylabel('amplitude')
grid
title('Given signal x(t) with f=100')

% Plot time-reversed signal y(-t)
subplot(3,1,2)
plot(t22,y1)
xlabel('time')
ylabel('amplitude')
grid
title(' signal y(-t) with f=150')

% Plot cross-correlation result
subplot(3,1,3)
plot(t,c)
xlabel('time')
ylabel('amplitude')
grid
title('Cross correlation of x(t) and y(t)')
