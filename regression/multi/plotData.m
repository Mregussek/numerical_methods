function plotData(X, y, theta, theta_pseudo)

x1 = X(:, 2)';
x2 = X(:, 3)';
z1 = theta(1) + theta(2) * x1 + theta(3) * x2;
z2 = theta_pseudo(1) + theta_pseudo(2) * x1 + theta_pseudo(3) * x2;

plot3(x1, x2, z1, 'b-');
hold on
plot3(x1, x2, y, 'r.');
hold on
plot3(x1, x2, z2, 'g-');
legend('Theta Gradient Descent', 'Points', 'Theta PseudoInverse');



end