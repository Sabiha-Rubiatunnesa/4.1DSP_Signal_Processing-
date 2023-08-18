clc;
clear all;
close all;
x = input('Enter signal 1: ');
h = input('Enter signal 2: ');
N1 = length(x);
N2 = length(h);
N = max(N1,N2);
N3 = N1 - N2;
if(N3 > 0)
    h = [h, zeros(1, N3)];
else
    x = [x, zeros(1, -N3)];
end
for n= 1:N;
    y(n) = 0;
    for i=1:N;
        j = n-i+1;
        if(j<=0)
            j = N+j;
        end
        y(n) = [y(n)+ (x(i)*h(j))];
    end
end
disp('Result ');
y
subplot(2,1,1)
stem(y);
title('Circular Convolution')
grid on;
