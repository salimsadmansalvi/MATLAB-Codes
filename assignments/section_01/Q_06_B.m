n = input('Enter the value of n: ');

if n < 5 || n > 12
    disp('Invalid value for n.')
    return
end

nFact = 1;
for i=n:-1:1
    nFact = nFact * i;
end

fprintf('%d! is: %d\n', n, nFact);