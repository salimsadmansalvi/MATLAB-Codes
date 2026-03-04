% ======================================================================= %
% Find the root of quadratic by taking the coefficients a, b, c and label
% the roots accordingly.
% ======================================================================= %
clc; clear;

a = input('Enter the coefficient a: ');
b = input('Enter the coefficient b: ');
c = input('Enter the coefficient c: ');

if a == 0
    disp('Coefficient of ''a'' cannot be zero.')
    return
end

D = b^2 - 4*a*c;
root1 = (-b + sqrt(D)) / (2*a);
root2 = (-b - sqrt(D)) / (2*a);

if D > 0
    fprintf('The roots are real and distinct: %.2f and %.2f\n', root1, root2)
elseif D == 0
    fprintf('The roots are real and equal: %.2f\n', root1)
else
    fprintf('The roots are complex conjugates: %s and %s\n', num2str(root1, 3), num2str(root2, 3))
end