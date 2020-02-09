function chebyshev()
% Wylicza aproksymacje Czebyszewa dla podanej funkcji oraz przedziału
% Wykorzystuje funkcje chebfit - zwraca współczynniki wielomianu
% oraz chebeval - wylicza wartość funkcji dla punktów

a = -2 * pi;
b = 2 * pi;
n = 8;
func = @(x) sin(x);

c = chebfit(a, b, n, func);

x = linspace(a, b, 100);

for k = 1:length(x)
    y(k) = chebeval(a, b, c, n, x(k));
end

plot(x, y, 'r')
hold on
plot(x, sin(x), 'b.')
legend('Chebyshev', 'Function')


end