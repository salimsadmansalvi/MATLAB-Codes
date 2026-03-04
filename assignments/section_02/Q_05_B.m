%Gaussian Elimination without Pivoting

clc; clear;

A = [2, 1, -1; 
    -3, -1, 2; 
    -2, 1, 2];
b = [8; -11; -3];

[n, ~] = size(A);
x = zeros(n, 1);

%Forward Elimination
for k = 1:n-1
    for i = k+1:n
        
        m = A(i,k) / A(k,k);
        
        A(i,:) = A(i,:) - m * A(k,:);
        b(i) = b(i) - m * b(k);
    end
end

%Back Substitution
x(n) = b(n) / A(n,n);
for i = n-1:-1:1
    x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i,i);
end

disp('Solution x (Without Pivoting):')
disp(x);