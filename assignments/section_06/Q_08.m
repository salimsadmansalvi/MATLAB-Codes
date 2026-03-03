P = 1000;       
r = 0.06;       
n = 4;        
t = 5;

A = P * (1 + r/n)^(n*t);

fprintf('Balance after %d years with quarterly compounding: $%.2f\n', t, A);