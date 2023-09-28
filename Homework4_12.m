% Zen Earl J. Alcala
% Homework 4

n = -5:10;
x = sin(pi*n/2);

k = -100:100;
w = (pi/100)*k; 
X = x*(exp(-1j*pi/100)).^(n'*k); 


[xe, xo, m] = evenodd(x, n); 

XE = xe*(exp(-1j*pi/100)).^(m'*k); 
XO = xo*(exp(-1j*pi/100)).^(m'*k); 

% Verification
XR = real(X); 
error1 = max(abs(XE-XR)); 

XI = imag(X); 
error2 = max(abs(XO-1j*XI)); 

% Plotting
subplot(2,2,1);plot(w/pi, XR);grid;
axis([-1, 1, -2, 2]);
xlabel('Frequency in pi');
ylabel('Re(X)');
title('Real part of X');

subplot(2,2,2);plot(w/pi, XI);grid;
axis([-1, 1, -10, 10]);
xlabel('Frequency in pi');
ylabel('Im(X)');
title('Imaginary part of X');

subplot(2,2,3);plot(w/pi, real(XE));grid;
axis([-1, 1, -2, 2]);
xlabel('Frequency in pi');
ylabel('XE');
title('Transform of even part');

subplot(2,2,4);plot(w/pi, imag(XO));grid;
axis([-1, 1, -10, 10]);
xlabel('Frequency in pi');
ylabel('XO');
title('Transform of odd part');