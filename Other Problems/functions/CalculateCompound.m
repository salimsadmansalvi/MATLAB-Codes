function [ accumulated, interest ] = CalculateCompound( p, r, m, t )
accumulated = p*(1 + r / m)^(m*t);
interest = accumulated - p;
end

