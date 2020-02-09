function rc()

wariant = 2;

t = linspace(0, 3, 1e3);
N = length(t);

R = 500 * 1e3; % 500kOhm
C = 1e-6; % 1uF

Uwy(1) = 0.2;
h = 0.01;

for n = 1:(N - 1)
    k1 = h * dUwy(t(n), Uwy(n), R, C, wariant);
    k2 = h * dUwy(t(n) + h / 2, Uwy(n) + k1 / 2, R, C, wariant);
    k3 = h * dUwy(t(n) + h / 2 , Uwy(n) + k2 / 2, R, C, wariant);
    k4 = h * dUwy(t(n) + h, Uwy(n) + k3, R, C, wariant);
    Uwy(n + 1) = Uwy(n) + 1 / 6 * (k1 + 2 * k2 + 2 * k3 + k4);
end

plot(t, Uwy, 'b-');
hold on
plot(t, Uwe(t, wariant), 'r-');
ylim([-0.1, 1.1])
xlabel('Czas t [s]');
ylabel('Napiecie [v]');
legend('U wyjsciowe', 'U wejsciowe');
title('Odpowiedz ukladu dolnoprzepustowego (R = 500kOhm, C = 1uF)')

end