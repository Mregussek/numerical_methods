function Y = my_nthroot(X, N)

X = X(:).';

if N == 0
    Y = ones(1, length(X));
else
    pow = 1 ./ N;
    
    len = length(X);
    for k = 1:len
        if X(k) > 0
            Y(k) = X(k) .^ (pow);
        else
            if mod(N, 2) == 1
                X_neg = -1 .* X(k);
                Y_neg = X_neg .^ (pow);
                Y(k) = -1 .* Y_neg;
            else
                error('If given negative number, power must be odd!');
            end
        end
    end
end
end
    