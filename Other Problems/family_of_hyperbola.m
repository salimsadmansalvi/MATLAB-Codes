% ======================================================================= %
% Draw a family of 10 hyperbolas and mark the center with +. 
% ======================================================================= %
clc; clear; close all;

% Range of theta
th = linspace(-2, 2, 1000);

% Coordinates of the center
h =0; k = 0;

% Number of hyperbolas
n = 10;

hold on
xlabel('X-Axis'); ylabel('Y-Axis');
title('Family of Hyperbolas');
colors = lines(n);

for r = 1:n
    a = r;
    b = 0.5*r;
    
    x = a*cosh(th);
    y = b*sinh(th);
    
    plot(h + x, k + y, 'Color', colors(r, :));
    plot(h - x, k + y, 'Color', colors(r, :));
end

plot(h, k, '+');
hold off