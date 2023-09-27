% Sinadhan, Mark Jonathan P.
% Symmetry Property

% Creating time domain signals
n = -5:10;
x = sin(pi*n/2);

% Freq domain 
k = -100:100; 
w = (pi/100)*k;

% Constants
exponential_term = (exp(-1i*pi/100));
[xe, xo, m] = evenodd(x,n);      % get evenodd 

% DTFT
X = x * exponential_term.^(n'*k);
XE = xe * exponential_term.^(m'*k);
XO = xo * exponential_term.^(m'*k);

% Verify
XR = real(X);   % get real num X
error1 = max(abs(XE-XR));
disp("Error 1: " + error1);

XI = imag(X);   % get imaginary num X
error2 = max(abs(XO-1i*XI));
disp("Error 2: " + error2);

% Plot 
subplot(2,2,1); 
plot(w/pi,XR); 
grid;
axis([-1,1,-2,2])
xlabel('frequency in pi units'); 
ylabel('Re(X)');
title('Real part of X')

subplot(2,2,2); 
plot(w/pi,XI); 
grid; 
axis([-1,1,-10,10])
xlabel('frequency in pi units'); 
ylabel('Im(X)');
title('Imaginary part of X')

subplot(2,2,3); 
plot(w/pi,real(XE)); 
grid; 
axis([-1,1,-2,2])
xlabel('frequency in pi units'); 
ylabel('XE');
title('Transform of even part')

subplot(2,2,4); plot(w/pi,imag(XO)); 
grid; 
axis([-1,1,-10,10])
xlabel('frequency in pi units'); 
ylabel('XO');
title('Transform of odd part')


