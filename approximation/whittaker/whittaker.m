function whittaker

x = linspace(0, 2, 1e2);
y = prost_gen(x);

plot(x, y, 'r');
hold on; grid on;

dx = x(2) - x(1);

x_plot = linspace(0, 2, 1e4);

for n = 1:length(x_plot)
    y_plot(n) = sum( sinc((x_plot(n) - x)/dx).*y );
end

plot(x_plot, y_plot, 'b');

end