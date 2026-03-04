miles = input('Enter the number of miles driven: ');

if miles <= 100
    total_cost = miles * 1.00;
    
elseif miles <= 300
    total_cost = (100 * 1.00) + (miles - 100) * 0.80;
    
else
    total_cost = (100 * 1.00) + (200 * 0.80) + (miles - 300) * 0.70;
end

average_cost = total_cost / miles;

fprintf('Total cost: $%.2f\n', total_cost);
fprintf('Average cost per mile: $%.2f\n', average_cost);
