function x = prost_gen(t)

T = 0.6;
A = 1;

x = zeros(size(t));

for q = 1:length(t)
   if rem(floor(t(q) / (T/2)),2)
       x(q) = A;
   else
       x(q) = 0;
   end
end

end