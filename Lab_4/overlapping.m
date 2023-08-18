clc;
clear all;
close all;
t= 1:0.1:100;
x= square(t);
y= square(t-10);
subplot(3,1,1)
plot(x);
xlabel('time');
ylabel('amplitude');
title('Signal');
axis([-1 1005 -2 2]);
grid on;

subplot(3,1,2)
plot(y);
xlabel('time');
ylabel('amplitude');
title('Delayed Signal');
axis([-1 1005 -2 2]);
grid on;
z=xcorr(x,y);
t1 = length(x)+1 : length(x)-1;
subplot(3,1,3)
plot(z)
title('Correlated Signal');
[max_value, max_index] = max(abs(z))
time_delay = (max_index - 1)/10
grid on;