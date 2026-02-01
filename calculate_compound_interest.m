% ======================================================================= %
% Write a function to compute the accumulated value and compound interest
% where interest is paid on $1000 at the rate of 6% a year at the end of
% 5 years. If the interest is compounted m number of terms. i.e.,
% i) Yearly (m=1)   ii) Half-yearly (m=2)   iii) Quarterly (m=4)
% iv) Monthly (m=12) v) Bi-monthly (m=6) vi) Weekly (m=52)
% vii) Daily (m=365)
% ======================================================================= %
clc; clear;

p = 1000;
r = 0.06;
t = 5;

m = [1 2 4 6 12 52 365];

for i = 1:length(m)
    [accumulated, interest] = CalculateCompound(p, r, m(i), t);
    fprintf('For m = %3d, accumulated value = %.2f and interest = %.2f\n', m(i), accumulated, interest)
end
