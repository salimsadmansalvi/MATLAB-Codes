s = 0;
for i=1:99
    s = s + (i / (i + 1));
end
fprintf('The value of the sum (i) : %.5f\n', s)

s = 0;
for i=1:50
    s = s + ((2*i - 1) / i^2);
end
fprintf('The value of the sum (ii) : %.5f\n', s)