function c =  chebfit(a, b, n, func)
% Wylicza współczynniki Czebyszewa

f = [];
c = [];

bma = 0.5 * (b - a);
bpa = 0.5 * (b + a);

for k = 1:n
    y = cos(pi * (k - 1 + 0.5) / n);
    f(k) = func(y * bma + bpa);
end

fac = 2 / n;

for k = 1:n
    sum = 0;
    for l = 1:n
        sum = sum + f(l) * cos(pi * (k - 1) * (l - 1 + 0.5) / n);
    end
    c(k) = fac * sum;
end

end