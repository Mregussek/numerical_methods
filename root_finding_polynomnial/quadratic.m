function X = quadratic(p)
por =  roots(p);

a = p(1);
b = p(2);
c = p(3);

D = b^2 - 4 * a * c;
D_s = sqrt(D);

x1 = (-b - D_s)/(2 * a);
x2 = (-b + D_s)/(2 * a); 

X(1) = x1;
X(2) = x2;
X = X(:).';

%disp('roots for quadratic():');
%disp(por(:).');
%disp('quadratic():');
%disp(X);

end