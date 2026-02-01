% ======================================================================= %
% Draw a family of 10 circles and mark the center with +. 
% ======================================================================= %
clc; clear; close all;

% Range of theta
th = linspace(0, 2*pi, 1000);

% Coordinates of the center
p =0; q = 0;

% Number of circles
n = 10;

hold on
xlabel('X-Axis'); ylabel('Y-Axis');
title('Family of Circles');
axis equal;
colors = lines(n);

for r = 1:n
    x = p + r*cos(th);
    y = q + r*sin(th);
    
    plot(x, y, 'Color', colors(r, :));
end

plot(p, q, '+');
hold off