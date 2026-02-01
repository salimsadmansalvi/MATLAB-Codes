% ======================================================================= %
% Find the BMI (Body Mass Index) of a person using the following formula
% and classify accordingly.
% BMI = Weight / Height^2; where Weight is in KG and Height is Meters.
% Classification,
% BMI <= 18.5 : Underweight
% 18.5 < BMI <= 24.9 : Normal
% 24.9 < BMI <= 29.9 : Overweight
% BMI > 29.9 : Obese
% ======================================================================= %
clc; clear;

w = input('Enther your weight in kg: ');
h = input('Enter your height in meters: ');

if h <= 0 || w <= 0
    disp('Invalid inputs')
    return
end

bmi = w / h^2;

if bmi <= 18.5
    fprintf('Your BMI is %.2f which is Underweight.\n', bmi)
elseif bmi > 18.5 && bmi <= 24.9
    fprintf('Your BMI is %.2f which is Normal.\n', bmi)
elseif bmi > 24.9 && bmi <= 29.9
    fprintf('Your BMI is %.2f which is Overweight.\n', bmi)
else
    fprintf('Your BMI is %.2f which is Obese.\n', bmi)
end