function [s, iteration_counter] = bisection(a, b, eps)
f_a = f(a); 
f_b = f(b); 

if f_a * f_b > 0
    error('Functions must be different signs in that interval!');
end

s = (a + b) / 2;
f_s = f(s);
iteration_counter = 1;

while abs(f_s) > eps && iteration_counter < 100
    f_a = f(a);
    
    if f_a * f_s > 0
        a = s;
    else
        b = s;
    end
    
    s = (a + b) / 2;
    f_s = f(s);
    iteration_counter = iteration_counter + 1;
end

end