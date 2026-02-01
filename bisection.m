% ======================================================================= %
% Find root of equation x^3 + x^2 - 1 = 0 using Bisection method. 
% ======================================================================= %
clc; clear;

f = @(x) x^3 + x^2 -1;

a = input('Enter the value of a: ');
b = input('Enter the value of b: ');
max_iter = input('Enter max iteration: ');
tol = input('Enter tolerance: ');

if f(a)*f(b) > 0
    disp('No roots within the bounds.');
    return
end

fprintf('Iter\t a\t\t\t b\t\t\t c\t\t\t err\t\t f(c)\n');
fprintf('-------------------------------------------------------------\n');

c = 0;
for i = 1:max_iter
    c = (a + b) / 2;
    err = abs(b-a);
    
    fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\t %.6f\n', i, a, b, c, err, f(c));
    
    if f(c) == 0 || err < tol
        break
    end
    
    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
end

fprintf('-------------------------------------------------------------\n');
if i == max_iter
    disp('Max iteration reached.')
end
fprintf('Approximate root at x = %.8f\n', c);





