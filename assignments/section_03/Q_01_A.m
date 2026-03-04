clc; clear;

t = linspace(0,2*pi,100);

x = cos(t);
y= sin(t);

plot(x,y, 'k');
title('Circle')
grid on
axis('equal')
