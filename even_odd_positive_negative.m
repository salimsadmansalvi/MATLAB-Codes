% ======================================================================= %
% Write a program that takes a number as input and determines whether it
% is an odd or even number as well as a negative or nonnegative number.
% ======================================================================= %
clc; clear;

n = input('Enter your number: ');

if n < 0
    fprintf('%f is a negative number\n', n);
else
    fprintf('%f is a nonnegative number\n', n);
end

if rem(n, 2) == 0
    fprintf('%f is an even number\n', n);
else
    fprintf('%f is an odd number\n', n);
end
