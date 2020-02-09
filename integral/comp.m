function result = comp(p, a, b)

pint = polyint(p);
result = polyval(pint, b) - polyval(pint, a);

end