function X = compare(a, b)

x = sort(a); y = sort(b);
X = max(abs(x(:) - y(:)));

end