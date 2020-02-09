function value = chebeval(a, b, c, m, x)
% Wylicza wartość funkcji w punkcie wielomianu Czebyszewa

d = 0;
dd = 0;

if (x - a) * (x - b) > 0
    error('Podane x nie nalezy do przedzialu <a, b>!');
end

y = (2 * x - a - b) / (b - a);
y2 = 2 * y;

for n = m:-1:2
    sv = d;
    d = y2 * d - dd + c(n);
    dd = sv;
end

value = y * d - dd + 0.5 * c(1);

end