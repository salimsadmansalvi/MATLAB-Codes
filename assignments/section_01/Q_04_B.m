n = 0;
i = 1;
disp('First 25 prime numbers: ')
while n < 25
    if isPrime(i)
        fprintf('%d ', i)
        n = n + 1;
    end
    i = i + 1;
end