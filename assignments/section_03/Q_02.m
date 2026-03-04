clc; clear;

t = linspace(0,20,100);

x = sin(t);
y = cos(t);
z = t;

plot3(x,y,z, 'r')
grid on;
title('Circular Helix')