t = -5:10;
x = sin(pi*n/2);

k = -100:100;
w = (pi/100)*k; %the frequencies between -pi and +pi

X = x * (exp(-1j*pi/100)).^(t'*k); %dtft of x

[xe, xo, m] = evenodd(x, t); %to compute even and odd parts

XE = xe * (exp(-1j*pi/100)).^(m'*k); %dtft of xe
XO = xo * (exp(-1j*pi/100)).^(m'*k); %dtft of xo

XR = real(X); %real part of X

error1 = max(abs(XE - XR));

disp(['Maximum Difference for Even Part: ', num2str(error1)]);

%this is for the odd part
error2 = max(abs(XO));

disp(['Maximum Difference for Odd Part: ', num2str(error2)]);