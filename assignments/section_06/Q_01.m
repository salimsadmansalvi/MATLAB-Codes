V = [5, 17, -3, 8, 0, -7, 12, 15, 20, -6, 6, 4, -7, 16];

pos_idx = V > 0 & (mod(V, 3) == 0 | mod(V, 5) == 0);
neg_idx = V < 0 & V > -5;

V(pos_idx) = 2 * V(pos_idx);
V(neg_idx) = V(neg_idx).^3;

disp('Transformed Vector:')
disp(V)