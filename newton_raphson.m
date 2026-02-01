% ======================================================================= %
% Find root of equation x^3 + x^2 - 1 = 0 using Newton-Raphson method. 
% ======================================================================= %
clc; clear;

f = @(x) x^3 + x^2 -1;
df = @(x) 3*x^2 + 2*x;

p0 = input('Enter initial guess: ');
max_iter = input('Enter max iteration: ');
tol = input('Enter tolerance: ');

fprintf('Iter\t p0\t\t\t p\t\t\t err\t\t f(p)\n');
fprintf('-------------------------------------------------------------\n');

p = 0;
for i = 1:max_iter
    if df(p0) == 0
        disp('Enter a different intitial guess.')
        break
    end
    
    p = p0 - f(p0) / df(p0);
    err = abs(p-p0);
    
    fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\n', i, p0, p, err, f(p));
    
    if err < tol
        break
    end
    
    p0 = p;
end

fprintf('-------------------------------------------------------------\n');
if i == max_iter
    disp('Max iteration reached.')
end
fprintf('Approximate root at x = %.8f\n', p);