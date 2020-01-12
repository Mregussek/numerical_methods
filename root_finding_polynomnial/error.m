function me = error()

for k = 1:1e4
    err(k) = cardano(40 * rand(1,4) + 1/2);
end

me = max(err);

end