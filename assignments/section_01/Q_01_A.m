x = 1:0.01:2;

y1 = x.^2 ./ (x.^3 + 1);
y2 = sin(x.*cos(x) ./ (x.^2 + 3.*x + 1));
y3 = (1 ./ x) + (x.^3 ./ (x.^4 + 5.*x.*sin(x)));
y4 = x ./ (x + 1 ./ x);

disp('     x          y(i)     y(ii)    y(iii)    y(iv)')
disp([x' y1' y2' y3' y4'])