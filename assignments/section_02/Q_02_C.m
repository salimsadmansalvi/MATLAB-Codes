%Lagrange Interpolation

clc; clear;

x = [1 3 5 7];
y = [1 4 10 19];
p = input('Interpolation point:');
n = length(x);

term = 0;

for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L * (p - x(j)) / (x(i) - x(j));
        end
    end
    term = term + L * y(i);
end
fprintf('Interpolated functional value at %.2f is %10.6f\n', p, term)