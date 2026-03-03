function [ series ] = fibonacciSequence( n )
    series = zeros(1, n);

    series(1) = 1;
    if n > 1
        series(2) = 1;
    end

    for i = 3:n
        series(i) = series(i - 1) + series(i - 2);
    end
end

