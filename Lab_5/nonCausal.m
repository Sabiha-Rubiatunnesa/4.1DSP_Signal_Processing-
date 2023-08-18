% Non-Causal System

clc;
clear all;
x=input('array: ');
b=0;
y=sym('z');
n=length(x);
m=input('index:')
for i=1:n
   b=b+x(i)*y^(m-i); 
    
end
b
z=[];
p=[0]
zplane(z,p)