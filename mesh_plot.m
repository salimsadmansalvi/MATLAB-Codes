% ======================================================================= %
% Generate mesh plot of:
% f(x, y) = x^2 + y^2; -3 ? x ? 3, -3 ? y ? 3 over a 50 × 50 grid on the
% specified domain.
% ======================================================================= %
clc; clear; close all;

x = linspace(-3, 3, 50);
y = linspace(-3, 3, 50);

[X, Y] = meshgrid(x, y);

Z = X.^2 + Y.^2;

mesh(X, Y, Z);
title('Mesh plot of x^2 + y^2');