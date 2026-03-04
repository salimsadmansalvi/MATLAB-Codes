%Weddle's Rule

f = @(x) sin(x);

intervals = input('Integration interval [a,b]:');
a = intervals(1); b = intervals(2); 

n = input('Number of Subintervals:');

while mod(n,6) ~=0
    disp('Number of Subintervals must be multiple of 6, choose again!')
    n = input('Number of Subintervals:');
end


h = (b - a) / n;

sum = f(a) + f(b);

for i = 1:n-1
    x = a + i * h;
    if mod(i,6)==0
    sum = sum + 2 * f(x);
    elseif mod(i,3)==0
    sum = sum + 6 * f(x);
    elseif mod(i,2)==0
    sum = sum + f(x);    
    else
    sum = sum + 5 * f(x);
    end
end

weddle = 3 * h/10 * sum;

fprintf('Area under sin(x) by Weddle rule is %10.6f', weddle)


