function num = prod_numerator(x, x_data, index)

len = length(x_data);

num = 1;

for n = 1:len
    if index ~= n   
        num = num * (x - x_data(n));
    end
end

end