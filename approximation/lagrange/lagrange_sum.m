function lag_sum = lagrange_sum(X, Y, point)

len = length(X);

for n = 1:len
    L(n) = Y(n) * (prod_numerator(point, X, n) / prod_denumerator(X, n));
end

lag_sum = sum(L);

end