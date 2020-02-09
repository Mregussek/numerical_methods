function [y, p] = f(x)

y = x .^ 4 - 9 .* x .^ 3 + 23 .* x .^ 2 - 15 .* x + 3;
p = [1 -9 23 -15 3];

end