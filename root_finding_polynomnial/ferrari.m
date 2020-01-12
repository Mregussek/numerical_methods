function com = ferrari(p)
por = roots(p);

if p(1) ~= 1
    a3 = p(2) / p(1);
    a2 = p(3) / p(1);
    a1 = p(4) / p(1);
    a0 = p(5) / p(1);
else
    a3 = p(2);
    a2 = p(3);
    a1 = p(4);
    a0 = p(5);
end

b1 = - a2/2;
b2 = (a3 * a1 - 4 * a0)/4;
b3 = (4 * a2 * a0 - a3^2 * a0 - a1^2)/8;
b = [1 b1 b2 b3];

car = roots(b);
k = car(1,1);

p = sqrt(2 * k + a3^2/4 - a2);
q = (k * a3 - a1)/(2 * p);

c1 = 1; 
c2_1 = a3/2 + p;
c2_2 = a3/2 - p;
c3_1 = k + q;
c3_2 = k - q;

p1 = [c1 c2_1 c3_1];
p2 = [c1 c2_2 c3_2];

o1 = quadratic(p1); 
o2 = quadratic(p2);
X = [o1 ;o2];
X = X(:);

disp('roots for ferrari(p):');
disp(por);
disp('ferrari(p):');
disp(X);

com = compare(X, por);

end