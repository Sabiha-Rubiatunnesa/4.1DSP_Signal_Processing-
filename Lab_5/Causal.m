% Causal System

clc;
clear all;
x=input('array: ');b=0;
y=sym('z');
n=length(x);
for i=1:n
   b=b+x(i)*y^(1-i); 
    
end
b
z=[];
p=[0]
zplane(z,p)