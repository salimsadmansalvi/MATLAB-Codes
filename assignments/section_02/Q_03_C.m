%Simpson's 3/8 Rule

f = @(x) sin(x);

intervals = input('Integration interval [a,b]:');
a = intervals(1); b = intervals(2); 

n = input('Number of Subintervals:');

while mod(n,3) ~=0
    disp('Number of Subintervals must be multiple of 3, choose again!')
    n = input('Number of Subintervals:');
end


h = (b - a) / n;

sum = f(a) + f(b);

for i = 1:n-1
    x = a + i * h;
    if mod(i,3)==0
    sum = sum + 2 * f(x);
    else
    sum = sum + 3 * f(x);
    end
end

simpson38 = 3 * h/8 * sum;

fprintf('Area under sin(x) by Simpson 3/8 rule is %10.6f', simpson38)


