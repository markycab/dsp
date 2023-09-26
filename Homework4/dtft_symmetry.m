%turno
n = -5:10;
x = sin(pi*n/2);

k = -100:100;
w = (pi/100)*k; % Frequencies between -pi and +pi

X = x * (exp(-1j*pi/100)).^(n'*k); % DTFT of x

[xe, xo, m] = evenodd(x, n); % Compute even and odd parts

XE = xe * (exp(-1j*pi/100)).^(m'*k); % DTFT of xe
XO = xo * (exp(-1j*pi/100)).^(m'*k); % DTFT of xo

XR = real(X); % Real part of X

error1 = max(abs(XE - XR)); % Difference

disp(['Maximum Difference for Even Part: ', num2str(error1)]);

% For the odd part
error2 = max(abs(XO)); % Difference

disp(['Maximum Difference for Odd Part: ', num2str(error2)]);