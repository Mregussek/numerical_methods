function lagrange()

data = [...
-1.0 0.038;
-0.8 0.058;
-0.6 0.1;
-0.4 0.2;
-0.2 0.5;
0.0 1.0;
0.2 0.5;
0.4 0.2;
0.6 0.1;
0.8 0.058;
1.0 0.038];

x_data = data(:, 1)';
y_data = data(:, 2)';

x = linspace(-1, 1, 1000);

for n = 1:length(x)
    y(n) = lagrange_sum(x_data, y_data, x(n));
end
    
plot(x, y, 'g-', x_data, y_data, 'ro');
    
    