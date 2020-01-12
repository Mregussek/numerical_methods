eps = linspace(1e-3, 1e-8, 1e5);
a = 0;
b = 10;

for n = 1:1e5
    [~, it1(n)] = bisection(a, b, eps(n));
end

for n = 1:1e5
    [~, it2(n)] = Newton(b, eps(n));
end

for n = 1:1e5
    [~, it3(n)] = secant(a, b, eps(n));
end


semilogx(eps, it1)
hold on
semilogx(eps, it2)
hold on
semilogx(eps, it3)
hold on
legend('bisection', 'newton', 'secant')