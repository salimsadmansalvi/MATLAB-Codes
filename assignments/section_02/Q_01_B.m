clc; clearvars;

f = @(x) x.^3 + x.^2 - 1;

g = @(x) nthroot(1 - x.^2, 3); 

gp = @(x) (-2 .* x) ./ (3 .* (1 - x.^2).^(2/3));

max_iter = 100;
tol = 0.001;

x0 = input('Initial Guess: ');

if abs(gp(x0)) >= 1 || isinf(gp(x0))
    fprintf('Warning: |gp(x0)| >= 1 or inf. The method may not converge.\n');
end

fprintf('%12s %10s %10s %10s\n', 'Iteration', 'x_old', 'x_new', 'Error')

for i = 1:max_iter
    c = g(x0); 
    
    err = abs(c - x0);
    
    fprintf('%12d %10.4f %10.4f %10.4f\n', i, x0, c, err);
    
    
    if err < tol || abs(f(c)) < tol
        fprintf('\nRoot found at c = %.5f after %d iterations\n', c, i);
        return; 
    end
    
    x0 = c; 
end

fprintf('\nMaximum iterations reached without convergence.\n');