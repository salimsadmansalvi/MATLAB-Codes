% ======================================================================= %
% Write a progarm to find the maximum and minimum of three numbers.
% ======================================================================= %
clc; clear;

a = input('Enter the value of number a: ');
b = input('Enter the value of number b: ');
c = input('Enter the value of number c: ');

maxVal = a;
minVal = a;

if b > maxVal
    maxVal = b;
end
if c > maxVal
    maxVal = c;
end

if b < minVal
    minVal = b;
end
if c < minVal
    minVal = c;
end

fprintf('Maximum value is %d\n', maxVal);
fprintf('Minimum value is %d\n', minVal);