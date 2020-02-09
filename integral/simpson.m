function [pole, por] = simpson(a, b, n)

h = (b - a) / (n - 1);
x = a:h:b;
[y, p] = f(x);
even = 2:2:(n - 1);
odd = 3:2:(n - 2);
pole = h / 3 * (y(1) + 4 * sum( y(even) ) + 2 * sum( y(odd) ) + y(n));
por = comp(p, a, b);

end

