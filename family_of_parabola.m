% ======================================================================= %
% Draw a family of 10 parabola and mark the vertex with +. 
% ======================================================================= %
clc; clear; close all;

% Range of theta
th = linspace(-5, 5, 1000);

% Coordinates of the vertex
h =0; k = 0;

% Number of parabolas
n = 10;

hold on
xlabel('X-Axis'); ylabel('Y-Axis');
title('Family of Parabolas');
colors = lines(n);

for r = 1:n
    a = 0.2*r;

    x = h + 2*a*th;
    y = k + a*th.^2;
    
    plot(x, y, 'Color', colors(r, :));
end

plot(h, k, '+');
hold off