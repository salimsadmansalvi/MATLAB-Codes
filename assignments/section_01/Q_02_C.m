S = 0;
for i = 1:1000
    S = S + 1/i^2;
end

fprintf('The sum is: %.6f\n', S);
fprintf('The approximate value of pi is: %.6f\n', sqrt(6*S));
fprintf('The actual value of pi is: %.6f\n', pi);
