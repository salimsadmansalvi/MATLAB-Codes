m = input('Enter the value of m: ');
n = input('Enter the value of n: ');

fprintf('Primes between %d and %d:\n', m, n);
count = 0;
for i = m:n
    if isPrime(i)
        fprintf('%d ', i)
        count = count + 1;
    end
end

fprintf('\nTotal number of primes: %d\n', count); 