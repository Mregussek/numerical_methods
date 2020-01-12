function y3 = value_polynomnial(p, x)
Px = length(p);
Nx = length(x);
y3 = zeros(1,Nx);
a = poly(x);
for n=1:Px
    y3 = y3 + a(n) * x .^ (Px-n);
end
end