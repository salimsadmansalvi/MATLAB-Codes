a1 = 2; b1 = 5; c1 = 9;
a2 = 5; b2 = -2; c2 = 8;

A = [a1 b1; a2 b2];
C = [c1; c2];

if det(A) ~= 0
    X = A \ C;
    fprintf('Solution:\n');
    fprintf('x = %.4f\n', X(1));
    fprintf('y = %.4f\n', X(2));
else
   disp('No unique solution exists.');
end

