%Trapezoidal Rule

f = @(x) sin(x);

intervals = input('Integration interval [a,b]:');
a = intervals(1); b = intervals(2); 

n = input('Number of Subintervals:');

h = (b - a) / n;

sum = f(a) + f(b);

for i = 1:n-1
    x = a + i * h;
    sum = sum + 2 * f(x);
end

trapezoidal = h/2 * sum;

fprintf('Area under sin(x) by Trapezoidal rule is %10.6f', trapezoidal)


