clc; clear;

f = @(x, Y) [Y(2); -3*Y(2) - 2*Y(1)];

[x, Y_out] = ode45(f, [0 1], [1; 0]); 

figure;
plot(x, Y_out(:,1), 'b-', 'LineWidth', 1.5);
hold on;
plot(x, Y_out(:,2), 'r--', 'LineWidth', 1.5);
hold off;

xlabel('x');
ylabel('y / dy/dx');
legend('y (Displacement)', 'y'' (Velocity)');
grid on;