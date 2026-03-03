function [ perfect ] = isPerfect( n )
    S = 0;
    for i = 1:n/2
        if mod(n, i) == 0
            S = S + i;
        end
    end
    
    perfect = S == n;
end

