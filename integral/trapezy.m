function [pole, por] = trapezy(a, b, n)

h = (b - a) / (n - 1);
x = a:h:b; 
[y, p] = f(x);
pole = h * ( sum(y(2:n) ) + ( y(1) + y(n) ) / 2 );
por = comp(p, a, b);

end