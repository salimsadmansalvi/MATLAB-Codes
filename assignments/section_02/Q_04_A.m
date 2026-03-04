%Taylor Series of order 4
clc; clear;

h = 0.05;               
x = 0:h:1;             
n = length(x);         
y = zeros(1, n);       
y(1) = 1;              


for i = 1:n-1
    xi = x(i);
    yi = y(i);
    
    % y' = -2xy^2
    d1 = -2 * xi * yi^2; 
    
    % y'' = -2y^2 - 4xyy'
    d2 = -2 * yi^2 - 4 * xi * yi * d1; 
    
    % y''' = -8yy' - 4x(y')^2 - 4xyy''
    d3 = -8 * yi * d1 - 4 * xi * d1^2 - 4 * xi * yi * d2; 
    
    % y^(4) = -12(y')^2 - 12yy'' - 12xy'y'' - 4xyy'''
    d4 = -12 * d1^2 - 12 * yi * d2 - 12 * xi * d1 * d2 - 4 * xi * yi * d3; 
    
    y(i+1) = yi + h*d1 + (h^2 / 2)*d2 + (h^3 / 6)*d3 + (h^4 / 24)*d4;
end

y_exact = 1 ./ (1 + x.^2);
error = abs(y_exact - y);

disp('    x        y_Taylor    y_Exact     Error');
disp('-----------------------------------------------');
for i = 1:n
    fprintf('%8.2f %12.6f %12.6f %12.2e\n', x(i), y(i), y_exact(i), error(i));
end

figure;
plot(x, y_exact, 'k-', 'LineWidth', 2);
hold on;
plot(x, y, 'ro--', 'LineWidth', 1.5, 'MarkerSize', 6);
xlabel('x'); ylabel('y');
title("Solution of y' = -2xy^2 with Taylor 4th Order Method")
legend('Exact Solution', 'Taylor 4th Order');
grid on;