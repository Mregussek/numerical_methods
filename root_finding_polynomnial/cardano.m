function com = cardano(p)
p = p(:).';
roo = roots(p); 

if p(1) ~= 1
    a = p(2) / p(1);
    b = p(3) / p(1);
    c = p(4) / p(1);
else
    a = p(2); 
    b = p(3); 
    c = p(4); 
end
    
p = (3 * (b) - (a)^2)/9; 
q = (a^3) / 27 - ((a) * (b))/6 + c/2;

D = (q)^2 + (p)^3;

if D>= 0 
    u = nthroot(-q + sqrt(D), 3); 
    v = nthroot(-q - sqrt(D), 3); 
    
    y1 = u + v; 
    y2 = -0.5*(u + v) + (sqrt(3)/2)*(u - v)*1i;
    y3 = -0.5*(u + v) - (sqrt(3)/2)*(u - v)*1i;
else 
    fi = acos(-q/sqrt(-p^3));
    
    y1 = 2*sqrt(-p)*cos(fi/3);
    y2 = 2*sqrt(-p)*cos((fi + 2*pi)/3);
    y3 = 2*sqrt(-p)*cos((fi + 4*pi)/3);
end

result(1) = y1 - a/3;
result(2) = y2 - a/3;
result(3) = y3 - a/3;

%disp('roots for cardano():');
%disp(roo);
%disp('cardano():');
%disp(result);

com = compare(result, roo);

end
    
    
    