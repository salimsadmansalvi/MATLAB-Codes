%Modified Euler's Method
clc; clear;

h = 0.05;               
x = 0:h:1;             
n = length(x);         
y = zeros(1, n);       
y(1) = 1;    

f = @(x,y) - 2 .* x .* y.^2;


for i = 1:n-1
    % Predictor 
    y(i+1) = y(i) + h * f(x(i), y(i));
    
    % Corrector 
    s1 = f(x(i), y(i));              
    s2 = f(x(i+1), y(i+1));       
    
    y(i+1) = y(i) + (h / 2) * (s1 + s2);
end

y_exact = 1 ./ (1 + x.^2);
error = abs(y_exact - y);

disp('    x        y_M_Euler    y_Exact     Error');
disp('-----------------------------------------------');
for i = 1:n
    fprintf('%8.2f %12.6f %12.6f %12.2e\n', x(i), y(i), y_exact(i), error(i));
end

figure;
plot(x, y_exact, 'k-', 'LineWidth', 2);
hold on;
plot(x, y, 'ro--', 'LineWidth', 1.5, 'MarkerSize', 6);
xlabel('x'); ylabel('y');
title("Solution of y' = -2xy^2 with Modified Euler's Method")

legend('Exact Solution', 'Modified Euler Method');
grid on;