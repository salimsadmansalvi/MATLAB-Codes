% ======================================================================= %
% Draw polar plot of r = sqrt(|2sin(5t)|);
% ======================================================================= %
clc; clear; close all;

t = linspace(0, 2*pi, 1000);
r = sqrt(abs(2*sin(5*t)));

polar(t,r);
axis equal;
title('Petals');