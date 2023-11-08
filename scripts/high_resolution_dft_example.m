
%low-res dft, low-dens
n1 = 0:9;
x1 = cos(0.48*pi*n1)+cos(0.52*pi*n1);
k1 = 0:5; w1 = 2*pi/10*k1;
Y1 = dft(x1, n1, 10);
magY1 = abs(Y1(1:1:6));
% low-res, hi-dens
x1b = [x1, zeros(1,90)];
n1b = 0:99; w1b = 2*pi/100*n1b;
Y1b = dft(x1b,n1b,100);
magY1b = abs(Y1b);

%low-res dtft
k = 0:500; w = pi/500*k;
DTFT1 = x1 *(exp(-1i*pi/500)).^(n1'*k);

% hi-res dft
n2 = 0:99;
x2 = cos(0.48*pi*n2)+cos(0.52*pi*n2);
k2 = 0:50; w2 = 2*pi/100*k2;
Y2 = dft(x2, n2, 100);
magY2 = abs(Y2(1:1:51));
%hi-res dtft
DTFT2 = x2 * (exp(-1i*pi/500)).^(n2'*k);



subplot(5,1,1); stem(n1, x1); title('x(n)'); grid;

subplot(5,1,2); stem(w1/pi, magY1); title('low-res, low-dens'); grid; hold on;
plot(w/pi, abs(DTFT1)); hold off;
subplot(5,1,3); stem(w1b/pi, magY1b); title('low-res, hi-dens'); grid; hold on;
plot(w/pi, abs(DTFT1)); hold off;

subplot(5,1,4); stem(w2/pi, magY2); title('hi-res, low-dens'); grid; hold on;
plot(w/pi, abs(DTFT2)); hold off;
subplot(5,1,5); stem(w/pi, abs(DTFT2)); title('hi-res, hi-dens'); grid; hold on;
plot(w/pi, abs(DTFT2)); hold off;