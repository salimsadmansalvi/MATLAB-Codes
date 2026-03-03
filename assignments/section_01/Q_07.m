n = input('Enter the values of n: ');

if length(n) <= 9
    disp('Invalid number of values for n.')
    return
end

max = n(1);
min = n(1);
positives = 0;
negatives = 0;
primes = 0;
perfects = 0;

sum = 0;
squareSum = 0;
for i=1:length(n)
    if n(i) < 0
        negatives = negatives + 1;
    else
        positives = positives + 1;
    end
    
    if isPrime(n(i))
        primes = primes + 1;
    end
    
    if isPerfect(n(i))
        perfects = perfects + 1;
    end
    
    if n(i) > max
        max = n(i);
    end
    
    if n(i) < min
        min = n(i);
    end
    
    sum = sum + n(i);
    squareSum = sum + n(i)^2;
end

mean = sum / length(n);

s = 0;
for i=1:length(n)
    s = s + (n(i) - mean)^2;
end

variance = s / length(n);
standardDeviation = sqrt(variance);


fprintf('The maximum value is: %d\n', max);
fprintf('The minimum value is: %d\n', min);
fprintf('The number of positives is: %d\n', positives);
fprintf('The number of negatives is: %d\n', negatives);
fprintf('The number of primes is: %d\n', primes);
fprintf('The number of perfects is: %d\n', perfects);
fprintf('The square sum is: %d\n', squareSum);
fprintf('The mean is: %f\n', mean);
fprintf('The variance is: %f\n', variance);
fprintf('The standard deviation is: %f\n', standardDeviation);








