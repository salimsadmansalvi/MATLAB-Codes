% ======================================================================= %
% Draw circular helix. 
% ======================================================================= %
clc; clear; close all;

t = linspace(0, 10*pi, 1000);
r = 2;
h = 0.2;

x = r * cos(t);
y = r * sin(t);
z = h * t;

plot3(x, y, z);
axis equal;
title('Circular Helix');