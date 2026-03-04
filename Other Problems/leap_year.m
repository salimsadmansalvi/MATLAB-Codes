% ======================================================================= %
% Find whether the input year is a leap year or not.
% ======================================================================= %
clc; clear;

year = input('Enter the year: ');

if (mod(year, 4) == 0 && mod(year, 100) ~= 0) || mod(year, 400) == 0
    fprintf('%d is a leap year.\n', year);
else
    fprintf('%d is not a leap year.\n', year);
end