clc; clear;

x = linspace(0, 4*pi, 100);

y = exp(-0.4 * x) .* sin(x);

plot(x,y, 'g-');
grid on;
title('Graph of exp(-0.4x)sin(x)')