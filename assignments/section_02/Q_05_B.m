%Gaussian Elimination without Pivoting

clc; clear;
A = [2, 1, -1;
    -3, -1, 2; 
    -2, 1, 2];

b = [8; -11; -3];
n = length(b);

for k = 1:n-1
    
    m = A(k+1:n, k) / A(k,k); 
   
    A(k+1:n, :) = A(k+1:n, :) - m * A(k, :);
    b(k+1:n)    = b(k+1:n)    - m * b(k);
end

x = zeros(n, 1);
for i = n:-1:1
    x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i,i);
end

disp('Solution (No Pivoting):')
disp(x)