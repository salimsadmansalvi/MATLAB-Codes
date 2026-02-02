% ======================================================================= %
% Find eigenvalues and eigenvectors of a 3x3 matrix. 
% ======================================================================= %
clc; clear; close all;

A = magic(3);
[V, D] = eig(A);
lambdas = diag(D);

for i = 1:length(lambdas)
    fprintf('Eigenvalue is %.2f and corresponding eigenvector is,\n', lambdas(i));
    disp(V(:, i))
end