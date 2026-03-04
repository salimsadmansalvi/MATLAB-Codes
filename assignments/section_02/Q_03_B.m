%Simpson's 1/3 Rule

f = @(x) sin(x);

intervals = input('Integration interval [a,b]:');
a = intervals(1); b = intervals(2); 

n = input('Number of Subintervals:');

while mod(n,2) ~=0
    disp('Number of Subintervals must be multiple of 2, choose again!')
    n = input('Number of Subintervals:');
end


h = (b - a) / n;

sum = f(a) + f(b);

for i = 1:n-1
    x = a + i * h;
    if mod(i,2)==0
    sum = sum + 2 * f(x);
    else
    sum = sum + 4 * f(x);
    end
end

simpson13 = h/3 * sum;

fprintf('Area under sin(x) by Simpson 1/3 rule is %10.6f', simpson13)


