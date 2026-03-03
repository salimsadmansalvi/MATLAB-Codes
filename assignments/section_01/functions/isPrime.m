function [ prime ] = isPrime( n )
    prime = true;

    if n <= 1
        prime = false;
    else
        for i = 2:sqrt(n)
            if mod(n, i) == 0
                prime = false;
                break
            end
        end
    end
end

