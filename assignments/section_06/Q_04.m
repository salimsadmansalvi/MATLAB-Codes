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