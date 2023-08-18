clc;
clear all;
close all;
L = input('input L: ');
M = input('input M: ');
x = input('input matrix x: ');
h = input('input matrix h: ');
n = -4:0:3;
limit = L+M-1;
for i = 1:limit
    y(i) = 0;
    for k = 1:M
        if(i>M)
            h(i) = 0;
        end
        if(i-k+1>0)
            y(i) = y(i) + x(k)*h(i-k+1);
        else
        end
    end
end
y
figure(1)
stem(y)