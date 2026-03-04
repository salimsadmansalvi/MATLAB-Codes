% ======================================================================= %
% Write a program that takes a positive integer N >= 10 and calculate to
% six decimal places of the sum and product:
% 1, 1+1/2, 1+1/2+1/3, ..., 1+1/2+1/3+...+1/N
% ======================================================================= %
clc; clear;

N = input('Enter the value of N (>= 10): ');

if N < 10 || floor(N) ~= N
    disp('Invalid value for N')
    return
end

S = 0;
P = 1;
for i = 1:N
    term = 0;
    for j = 1:i
        term = term + 1/j;
    end
    S = S + term;
    P = P * term;
end

fprintf('The sum of the terms is: %.6f\n', S)
fprintf('The product of the terms is: %.6f\n', P)