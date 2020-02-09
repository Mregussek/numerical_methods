function yval = legendre(k, xval)
% Rekurencyjne wylicza wartosc wielomianu Legendre'a w punkcie xval

if k < 0
  error('k nie moze byc ujemne!');
elseif k == 0
  yval = ones(size(xval));
elseif k == 1    
  yval = xval;
else
  yval = ((2 * k - 1) * xval .* legendre(k - 1, xval) ...
          - (k - 1) * legendre(k - 2, xval) ) / k;
end