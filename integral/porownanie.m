function porownanie()

k = 10:10:600;
for n = k
    r1 = 0;
    r2 = 5;
    
    [w1, w2] = trapezy(r1, r2, n);
    e_t(n) = abs(w1 - w2);
    
    [s1, s2] = simpson(r1, r2, n);
    e_s(n) = abs(s1 - s2);
end

trapezy_blad = max(e_t)
simpson_blad = max(e_s)

figure()
semilogy(k, e_t(k));
hold on
semilogy(k, e_s(k));
legend('trapez', 'simpson');

end