function wynik = integration_polynomnial(p)
p = p(:).';
l = length(p);
wynik = [ 1 ./ (l:-1:1) .* p, 0];
disp('Function():');
disp(wynik);
disp('Polyint()');
disp(polyint(p));
end