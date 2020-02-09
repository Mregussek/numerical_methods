function den = prod_denumerator(x_data, index)

len = length(x_data);

den = 1;

for n = 1:len
    if index ~= n   
        den = den * (x_data(index) - x_data(n));
    end
end

end