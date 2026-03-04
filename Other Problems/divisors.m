% ======================================================================= %
% Find all the divisors of a given number.
% ======================================================================= %
clc; clear;

n = input('Enter the number: ');

fprintf('Divisors of %d are:\n', n);
for i = 1:n
    if mod(n, i) == 0
        fprintf('%d   ', i)
    end
end
fprintf('\n')