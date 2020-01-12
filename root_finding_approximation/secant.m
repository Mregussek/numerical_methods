function [b, iteration_counter] = secant(a, b, eps)
    f_a = f(a);
    f_b = f(b); 
    iteration_counter = 0; 
    
    if f_a * f_b > 0
        error('Functions must be different signs in that interval!');
    end
    
    while abs(f_b) > eps && iteration_counter < 100
        try
            c = b - (f_b) *  ((b - a) / (f_b - f_a)) ;
        catch
            fprintf('Error! - denumerator is equal to 0 with x = \n', b)
            break
        end
        
        a = b;
        b = c;
        f_a = f_b; 
        f_b = f(b);
        iteration_counter = iteration_counter + 1;
    end
    
    if abs(f_b) > eps
        iteration_counter = -1;
    end
end