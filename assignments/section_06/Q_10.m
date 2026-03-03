c = 1.06;
x = 4:1:22;

% Assumed y range for endpoints
y_min = 10;  % y at x = 4
y_max = 50;  % y at x = 22

m = (y_max - y_min)/(22 - 4);
y = m*x + c;

fprintf('The slope is: %.2f\n', m);
T = table(x', y', 'VariableNames', {'x', 'y'});
disp(T);