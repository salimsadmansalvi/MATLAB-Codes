clc; clear;

w = input('Input angular velocity w:'); 

f = @(t, Y) [Y(2); -w^2 * sin(Y(1))];
[t, Y_out] = ode45(f, [0 15], [1; 0]);

figure;
plot(t, Y_out(:,1), 'b-', 'LineWidth', 1.5);
hold on;
plot(t, Y_out(:,2), 'r--', 'LineWidth', 1.5);
hold off;

xlabel('Time');
ylabel('Amplitude');
title('Displacement & Velocity of Pendulum vs Time')
grid on
legend('Displacement', 'Velocity');