% ======================================================================= %
% Write a program that takes in two number x and y and evalutate the 
% expression e^(x*y) and log(x+y)
% ======================================================================= %
clc; clear;

x = input('Enter the value of x: ');
y = input('Enter the value of y: ');

fprintf('The value of e^(x*y) is %f\n', exp(x*y));
fprintf('The value of log(x+y) is %f\n', log(x+y));