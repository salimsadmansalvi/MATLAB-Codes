%Method of False Position

clc; clearvars;

f = @(x) x^3 + x^2 - 1;

interval = input('Input the approximation interval (a and b)');
a = interval(1);
b = interval(2);

    while f(a)*f(b) >= 1
        fprintf('Root is not inside this interval, enter a and b again\n')
        input('Input the approximation interval (a and b)');
        a = interval(1);
        b = interval(2);
    end

 max_iter = 100;
 tol = 0.00001;


 fprintf('%12s %10s %10s %10s %10s\n', 'Iteration', 'a', 'b', 'c', 'abs(f(c))');

 if f(a) * f(b) < 0
     for i = 1:max_iter
            fa = f(a); fb = f(b);
            c = (a*fb - b*fa) / (fb - fa);
            fc = f(c);
            fprintf('%12d %10.4f %10.4f %10.4f %10.4f\n', i, a, b, c, abs(f(c)));
        if fc == 0 || abs(fc) < tol
            fprintf('Root found at c = %.5f after %d iterations\n', c, i);
            break;
        elseif f(a) * fc < 0
            b = c; 
        else
            a = c; 
        end
     end
 end