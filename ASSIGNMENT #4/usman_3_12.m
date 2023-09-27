%USMAN, JUBAL U.

n = -5:10;
x = sin(pi * n / 2);

k = -100:100;
w = (pi / 100) * k; % frequency between -pi and +pi

X = x * (exp(-1i * pi / 100)).^(n' * k); % DTFT of x signal decomposition

% Calculate even and odd parts manually
xe = 0.5 * (x + flip(x)); % Even part
xo = 0.5 * (x - flip(x)); % Odd part

XE = xe * (exp(-1i * pi / 100)).^(n' * k); % DTFT of xe
XO = xo * (exp(-1i * pi / 100)).^(n' * k); % DTFT of xo

% verification
XR = real(X); % real part of X
error1 = max(abs(XE - XR)); % Difference

XI = imag(X); % imag part of X
error2 = max(abs(XO - 1i * XI)); % Difference

% graphical verification
subplot(2,2,1); plot(w/pi, XR); grid; axis([-1,1,-2,2])
xlabel('frequency in pi units'); ylabel('Re(X)');
title('Real part of X')
subplot(2,2,2); plot(w/pi, XI); grid; axis([-1,1,-10,10])
xlabel('frequency in pi units'); ylabel('Im(X)');
title('Imaginary part of X')
subplot(2,2,3); plot(w/pi, real(XE)); grid; axis([-1,1,-2,2])
xlabel('frequency in pi units'); ylabel('XE');
title('Transform of even part')
subplot(2,2,4); plot(w/pi, imag(XO)); grid; axis([-1,1,-10,10])
xlabel('frequency in pi units'); ylabel('XO');
title('Transform of odd part')