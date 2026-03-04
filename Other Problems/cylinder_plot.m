% ======================================================================= %
% Generate cylinder plot.
% ======================================================================= %
clc; clear; close all;

t = linspace(0, pi, 20);
r = 1 + sin(t);

[X, Y, Z] = cylinder(r);

surf(X, Y, Z);
title('Cylinder');
axis square;