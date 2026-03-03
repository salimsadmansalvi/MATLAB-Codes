balance = 300000;     
interest = 0.05;      
inflation = 0.02;     
withdrawal = 25000;

year = 0;

% Store values for plotting
years = [];
balances = [];
withdrawals = [];

while balance > 0
    year = year + 1;
    
    % Add yearly interest
    balance = balance * (1 + interest);
    
    % Withdraw money
    if withdrawal > balance
        withdrawal = balance;
    end
    balance = balance - withdrawal;
    
    % Store data
    years(end+1) = year;
    balances(end+1) = balance;
    withdrawals(end+1) = withdrawal;
    
    % Increase withdrawal for next year
    withdrawal = withdrawal * (1 + inflation);
end

fprintf('The money lasts for %d years.\n', year);


plot(years, balances, 'b-o', 'LineWidth', 1.5); hold on;
plot(years, withdrawals, 'r-s', 'LineWidth', 1.5);

xlabel('Year');
ylabel('Amount ($)');
title('Retirement Account Balance and Withdrawals Over Time');
legend('Account Balance', 'Yearly Withdrawal');
grid on;