n = 0:100;
k = -100:100;
x = cos(pi*n/2);
w = (pi/100)*k;
X = x * (exp(-j*pi/100)).^(n'*k);

%------

y =  exp(j*pi*n/4).*x;  % signal multiplied by exp(j*pi*n/4)
Y = y * (exp(-j*pi/100)).^(n'*k); % DTFT of y




%For plotting verification
subplot(2,2,1); plot(w/pi,abs(X)); grid; axis([-1,1,0,60])
xlabel('frequency in pi units'); ylabel('|X|')
title('Magnitude of X')
subplot(2,2,2); plot(w/pi,angle(X)/pi); grid; axis([-1,1,-1,1])
xlabel('frequency in pi units'); ylabel('radiands/pi')
title('Angle of X')
subplot(2,2,3); plot(w/pi,abs(Y)); grid; axis([-1,1,0,60])


title('Angle of Y')
xlabel('frequency in pi units'); ylabel('|Y|')
title('Magnitude of Y')
subplot(2,2,4); plot(w/pi,angle(Y)/pi); grid; axis([-1,1,-1,1])
xlabel('frequency in pi units'); ylabel('radians/pi')