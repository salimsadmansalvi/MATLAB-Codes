C = (1:2:18)';
F = (9/5)*C + 32;

T = table(C, F, 'VariableNames', {'Celsius', 'Fahrenheit'});
disp(T);