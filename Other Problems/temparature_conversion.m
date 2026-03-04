% ======================================================================= %
% Write a function to convert given temparature from Celcius to Farenhite
% and Farenhite to Celcius. Use the function to convert temparature based
% on users perference.
% ======================================================================= %
clc; clear;

choice = input('What type of conversion you want? \n 1. F to C \n 2. C to F\n => ');
temp = input('Enter the temparature: ');

switch choice
    case 1
        fprintf('Temparature in Celcius is %.2f\n', ConvertTempTo(temp, 'C'))
    case 2
        fprintf('Temparature in Farenhite is %.2f\n', ConvertTempTo(temp, 'F'))
    otherwise
        disp('Invalid choice.')
end