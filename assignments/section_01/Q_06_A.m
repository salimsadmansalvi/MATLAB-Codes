n = input('Enter the value of n: ');

if n <= 9
    disp('Invalid value for n.')
    return
end

if isPrime(n)
    fprintf('%d is a prime number.\n', n);
else
    S = 0;
    for i = 1:n
        if mod(n, i) == 0
            S = S + i;
        end
    end
    
    fprintf('The sum of the divisors: %d\n', S);
    if S == 2 * n
        fprintf('%d is a perfect number.\n', n);
    else
        fprintf('%d is not a perfect number.\n', n);
    end

end