function wynik = derivative_polynomnial(p)
p = p(:).';
l = length(p) - 1;
wynik = (l:-1:1) .* p(1:end-1);
disp('Function():');
disp(wynik);
disp('Polyder()');
disp(polyder(p));
end