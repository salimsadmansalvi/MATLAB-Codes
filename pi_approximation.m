% ======================================================================= %
% The constant ? can be approximated by the following series,
% ?^2 / 6 = 1 + 1/2^2 + 1/3^2 + ...
% Find the sum of the first 1000 terms. Hence find the value of ? in six
% decimal places.
% ======================================================================= %
clc; clear;

S = 0;
for i = 1:1000
    S = S + 1/i^2;
end

fprintf('The approximate value of pi is: %.6f\n', sqrt(6*S));
fprintf('The actual value of pi is: %.6f\n', pi);
