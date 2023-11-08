xn = [1,1,1,1];
n = 0:3;
k = 0:500; w = k*pi/250;
X = xn * (exp(-1i * pi/250)).^(n'*k);
magX = abs(X); angX = angle(X);

X2 = dft(xn, n, 4);
magX2 = abs(X2); angX2 = angle(X2);

subplot(1,2,1); plot(w/pi,magX); title('Magnitude of X'); grid; hold on;
stem(n/2, magX2); hold off;

subplot(1,2,2); plot(w/pi, angX); title('Angle of X'); grid; hold on;
stem(n/2, angX2); hold off;


