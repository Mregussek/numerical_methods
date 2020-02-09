function plot_legendre()
% Rysuje wielomianu Legendre'a dla roznych stopni
% Wykorzystuje rekurencyjne wyliczenie wielomianu legendre()

x = linspace(-1, 1, 1000);
max_m = 5;
Legend = cell(max_m,1);

for m = 1:max_m
    for n = 1:length(x)
        y(n) = legendre(m, x(n));
    end
    
    Legend{m}=strcat('Legendre Degree - ', num2str(m));
    plot(x, y);
    hold on
end

legend(Legend);

end