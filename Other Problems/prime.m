% ======================================================================= %
% Find whether the given number is prime.
% ======================================================================= %
clc; clear;

n = input('Enter the number: ');

isPrime = true;

if n <= 1
    isPrime = false;
else
    for i = 2:sqrt(n)
        if mod(n, i) == 0
            isPrime = false;
            break
        end
    end
end

if isPrime
    fprintf('%d is a prime number.\n', n);
else
    fprintf('%d is not a prime number.\n', n);
end
