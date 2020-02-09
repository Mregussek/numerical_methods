% Transfer function:                   (jw) ^ 2
%                     H(jw) = ----------------------------------
%                              (jw)^2 + (R / L) * jw + 1 / (L * C)

close all; 

wariant = 2;

switch wariant
    case 1
        R = 1e3;
        L = 1e-5;
        C = 1e-6;
    case 2
        R = 2 * 1e3;
        L = 1e-6;
        C = 1e-5;
end

numH = [1 0 0];
denH = [1 R/L 1/(L*C)];
Hbode = tf(numH, denH);
[mag, phase, wout] = bode(Hbode, logspace(1, 5, 75));
mag = squeeze(mag);
phase = squeeze(phase);
H = ((j * wout) .^ 2) ./ ((j*wout).^2 + R ./ L .* j*wout + 1 ./ (L .* C));

figure(1);

subplot(2,1,1)
axis equal;
semilogx(wout, 20*log10(mag), 'b.');
hold on;
semilogx(wout, 20*log10(abs(H)), 'r-');
grid on; ylabel('|H(j\omega)|'); title('Bode Plot: Magnitude Response');
hold off;
grid on;
legend('Bode Method', 'Complex Method');

subplot(2,1,2);
axis equal;
semilogx(wout, phase, 'b.');
hold on;
semilogx(wout, unwrap(angle(H))*180/pi, 'r-');
grid on; xlabel('\omega (rad/sec)'); ylabel('\angleH(j\omega) (\circ)'); title('Bode Plot: Phase Response');
hold off;
grid on;
legend('Bode Method', 'Complex Method');
