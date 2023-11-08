t = [0:400]*pi/400; fc = 10; fm = 1/2;
x1t = sin(2*pi*fc*t);
x2t = 0.5 * cos(2*pi*(fc-fm)*t);
x3t = -0.5 * cos(2*pi*(fc+fm)*t);
xam = x1t + x2t + x3t;
carrier = sin(2*pi*fc*t);
modulating = sin(2*pi*fm*t);

subplot(2,2,1),plot(t/pi,carrier); title('carrier');
subplot(2,2,3),plot(t/pi,modulating);title('modulating');
subplot(2,2,4), plot(t/pi,xam); title('xam(t)'); hold on;
plot(t/pi,modulating+1,'--r'); hold on; plot(t/pi, -modulating-1,'--r');