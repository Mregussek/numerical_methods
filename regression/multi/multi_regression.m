function multi_regression()

data = load('data.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Print out some data points
%fprintf('First 10 examples from the dataset: \n');
%fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:10,:) y(1:10,:)]');

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');
[X, ~, ~] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];

fprintf('Running gradient descent ...\n');

% Set learning rate and num_iters for gradient descent
alpha = 0.01;
num_iters = 1000;

% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, 'b-');
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('Cost function of theta = %f', J_history(length(J_history)));
fprintf('\n');

% Calculating pseudoinverse matrix
theta_pseudo = pinv(X' * X) * X' * y;
J = computeCostMulti(X, y, theta_pseudo);

fprintf('Theta computed from pseudoinverse matrix: \n');
fprintf(' %f \n', theta_pseudo);
fprintf('Cost function of theta_pseudo = %f\n', J);

plotData(X, y, theta, theta_pseudo);

end