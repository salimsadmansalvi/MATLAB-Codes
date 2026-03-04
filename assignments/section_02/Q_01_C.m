%Newton Raphson Method

clc; clearvars;

max_iter = 100;

tol = 0.001;


f = @(x) x^3 + x^2 - 1;

fp = @(x) 3 * x^2 + 2 * x - 1;

x0 = input('Initial Guess: ');

while fp(x0) == 0 || isinf(fp(x0))
    fprintf('The method may not converge.\n');
    x0 = input('Initial Guess: ');
end

fprintf('%12s %10s %10s %10s\n', 'Iteration', 'x_old', 'x_new', 'Error')

for i = 1:max_iter
    c = x0 - f(x0)/fp(x0);
    err = abs(c - x0);
    fprintf('%12d %10.4f %10.4f %10.4f\n', i, x0, c, err);
    if err < tol || abs(f(c)) < tol
        fprintf('Converged to %f after %d iterations.\n', c, i);
        return;
    end
    x0 = c; 
end

fprintf('\nMaximum iterations reached without convergence.\n');
