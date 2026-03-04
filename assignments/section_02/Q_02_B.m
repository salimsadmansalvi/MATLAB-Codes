%Newton Backward Interpolation

clc; clear;

x = [1 3 5 7];
y = [1 4 10 19];

n = length(x);

dt = zeros(n);

dt(:,1) = y';

p = input('Interpolation point:');

h = x(2) - x(1);
u = (p - x(n)) / h;



for j = 2:n
    for i = j:n
        dt(i,j) = dt(i, j-1) - dt(i-1, j-1);
    end
end


fprintf('Backward Difference Table\n')
disp(dt)

term = dt(n,1);
factor = 1;

for j = 2: n
    factor = factor * (u+(j-2));
    term = term + factor * (dt(n,j) / factorial(j-1));
end

fprintf('Interpolated functional value at %.2f is %10.6f', p, term)

