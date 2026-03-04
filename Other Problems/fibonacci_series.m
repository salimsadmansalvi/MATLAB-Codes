% ======================================================================= %
% Write a function to find the first n terms of Fibonacci series.
% ======================================================================= %
clc; clear;

n = input('Enter number of terms: ');

if n < 1 || floor(n) ~= n
    disp('Invalid number of terms.')
    return
end

disp('Fibonacci Series:')
disp(FibonacciSeries(n))