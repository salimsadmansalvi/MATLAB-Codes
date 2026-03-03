temps = [58 73 73 53 50 48 56 73 73 66 69 63 74 82 84 91 93 89 91 80 59 69 56 64 63 66 64 74 63 69];

days_above_75 = sum(temps > 75);
days_between_65_80 = sum(temps >= 65 & temps <= 80);
days_50_60 = find(temps >= 50 & temps <= 60);

fprintf('Number of days with temperature above 75°F: %d\n', days_above_75);
fprintf('Number of days with temperature between 65°F and 80°F: %d\n', days_between_65_80);
fprintf('Days of the month with temperature between 50°F and 60°F: ');
disp(days_50_60);