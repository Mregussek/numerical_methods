function [solution, no_iterations] = Newton(x0, eps)
    
x = x0;
f_value = f(x);
dfdx_value = dfdx(x);
iteration_counter = 0;
    
while abs(f_value) > eps && iteration_counter < 100
    try
        x = x - (f_value / dfdx_value);
    catch
        fprintf('Error! - derivative is equal to 0 with x = \n', x)
        return
    end
    
    f_value = f(x);
    dfdx_value = dfdx(x);
    iteration_counter = iteration_counter + 1;
    
end

if abs(f_value) > eps
    iteration_counter = -1;
end
    
solution = x;
no_iterations = iteration_counter;

end