function myDFT(K)

x = linspace(0,4,1e3);
y = zeros(size(x));
y(x<1) = 1;

N = length(x);
n = [0:N-1];
k = [-K:K];

A = 1/sqrt(N)*exp(-j*2*pi*k(:)*n/N);

Z = A*y(:);

z = real(A'*Z);

figure, hold on, grid on
    plot(x,y,'b')
    plot(x,z,'r')