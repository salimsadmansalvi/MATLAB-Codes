n = input('Enter the value of n: ');
r = input('Enter the value of r: ');

if n < r
    disp('Invalid values.')
    return
end

fact = @(n) exp(-n) * n^n * sqrt(2*pi*n);
result = fact(n) / (fact(r) * fact(n-r));
fprintf('The value of nCr: %f\n', result)
