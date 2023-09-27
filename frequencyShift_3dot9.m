% Sinadhan, Mark Jonathan P.
% Frequency Shift Property

% Creating time domain signals
n = 0:100;
x = cos(pi*n/2);
y = exp(1i*pi*n/4).*x;   % signal(x) multiplied 

% Freq domain 
k = -100:100; 
w = (pi/100)*k;

% Constants
exponential_term = (exp(-1i*pi/100)).^(n'*k);

% DTFT
X = x * exponential_term;
Y = y * exponential_term;

% Plots
subplot(2,2,1); 
plot(w/pi,abs(X)); 
grid; 
axis([-1,1,0,60])
xlabel('frequency in pi units'); ylabel('|X|')
title('Magnitude of X')

subplot(2,2,2); plot(w/pi,angle(X)/pi); 
grid; 
axis([-1,1,-1,1])
xlabel('frequency in pi units'); 
ylabel('radiands/pi')
title('Angle of X')

subplot(2,2,3); 
plot(w/pi,abs(Y)); 
grid; 
axis([-1,1,0,60])
xlabel('frequency in pi units'); 
ylabel('|Y|')
title('Magnitude of Y')

subplot(2,2,4); 
plot(w/pi,angle(Y)/pi); 
grid; 
axis([-1,1,-1,1])
xlabel('frequency in pi units'); 
ylabel('radians/pi')
title('Angle of Y')
