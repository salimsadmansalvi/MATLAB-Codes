clc; clear;

x1 = linspace(0, 4*pi, 10);
x2 = linspace(0, 4*pi, 50);
x3 = linspace(0, 4*pi, 100);


y1 = exp(-0.4 * x1) .* sin(x1);
y2 = exp(-0.4 * x2) .* sin(x2);
y3 = exp(-0.4 * x3) .* sin(x3);

subplot(3,1,1)
plot(x1,y1, 'g-');
grid on;
title('Graph of exp(-0.4x)sin(x) with 10 points')

subplot(3,1,2)
plot(x2,y2, 'b-');
grid on;
title('Graph of exp(-0.4x)sin(x) with 50 points')

subplot(3,1,3)
plot(x3,y3, 'r-');
grid on;
title('Graph of exp(-0.4x)sin(x) with 100 points');