% Transfer function:                   1 / (L * C)
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
        
numH = 1/(L * C);
denH = [1 R/L 1/(L*C)];
Hbode = tf(numH, denH);
[mag, phase, wout] = bode(Hbode, logspace(1, 5, 75));
mag = squeeze(mag);
phase = squeeze(phase);
H = (1 ./ (L .* C)) ./ ((j*wout).^2 + R ./ L .* j*wout + 1 ./ (L .* C));

figure(1);

subplot(2,1,1)
semilogx(wout, 20*log10(mag), 'b.', 'MarkerSize', 10);
hold on;
semilogx(wout, 20*log10(abs(H)), 'r-');
grid on; ylim(subplot(2,1,1), [-100, 2]); ylabel('|H(j\omega)|'); title('Bode Plot: Magnitude Response');
hold off;
grid on;
legend('Bode Method', 'Complex Method');

subplot(2,1,2);
semilogx(wout, phase, 'b.', 'MarkerSize', 10);
hold on;
semilogx(wout, unwrap(angle(H))*180/pi, 'r-');
grid on; ylim(subplot(2,1,2), [-93, 5]); xlabel('\omega (rad/sec)'); ylabel('\angleH(j\omega) (\circ)'); title('Bode Plot: Phase Response');
hold off;
grid on;
legend('Bode Method', 'Complex Method');


