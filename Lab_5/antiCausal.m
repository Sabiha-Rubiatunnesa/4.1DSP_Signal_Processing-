% Anti-Causal System

clc;
clear all;
x=input('array: ');b=0;
y=sym('z');
n=length(x);
for i=1:n
   b=b+x(i)*y^(-(i-n)); 
    
end
b
z=[];
p=[]
zplane(z,p)