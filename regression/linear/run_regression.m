function run_regression()

fprintf('Plotting Data ...\n')
data = load('data.txt');
X = data(:, 1);
y = data(:, 2);
m = length(y); % number of training examples

plotData(X, y);

fprintf('Running Gradient Descent ...\n')

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

% compute and display initial cost
J(1) = computeCost(X, y, theta);

% run gradient descent
[theta, J_history] = gradientDescent(X, y, theta, alpha, iterations);

% print theta to screen
fprintf('Starting Cost function = %f\n', J);
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));
fprintf('Cost function now = %f\n', J_history(length(J_history)));

% Plot the linear fit
hold on;
plot(X(:,2), X * theta, 'b-')

% Plot the linear fit with pseudoinverse
theta_pseudo_inv = inv(X' * X) * X' * y;
J(2) = computeCost(X, y, theta_pseudo_inv);

fprintf('Theta found by pseudoinverse matrix: %f %f\n', ...
    theta_pseudo_inv(1), theta_pseudo_inv(2));
fprintf('Cost function with theta_pseudo_inv = %f\n', J(2));

hold on;
plot(X(:, 2), X * theta_pseudo_inv, 'g-');


end