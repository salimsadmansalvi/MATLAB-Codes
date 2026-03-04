x = linspace(0,10,3);

A = [1 5 6;
    2 9 3;
    1 2 0];

B = sin(x);

Z1 = A * sqrt(x)';
disp(Z)

Z2 = B * sqrt(x)';
disp(Z2)