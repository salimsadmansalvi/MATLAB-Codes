% ======================================================================= %
% Find whether the given number is a perfect number.
% ======================================================================= %
clc; clear;

n = input('Enter the number: ');

S = 0;
for i = 1:n/2
    if mod(n, i) == 0
        S = S + i;
    end
end

if S == n
    fprintf('%d is a perfect number.\n', n);
else
    fprintf('%d is not a perfect number.\n', n);
end