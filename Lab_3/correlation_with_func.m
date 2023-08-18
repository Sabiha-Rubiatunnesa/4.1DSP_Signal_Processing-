clc;
clear all;
close all;
x = input('Enter x: ');
y = input('Enter y: ');
c = xcorr(x,y)
a = xcorr(x,x)
subplot(4,1,1);
stem(x)
title('Signal 1');
grid on;

subplot(4,1,2);
stem(y)
title('Signal 2');
grid on;

subplot(4,1,3);
stem(c)
title('Cross correlation');
grid on;
subplot(4,1,4);
stem(a)
title('Auto correlation');
grid on;