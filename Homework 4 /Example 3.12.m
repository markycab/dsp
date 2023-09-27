
n = -5:10;
x = sin(pi*n/2);
k = -100:100;
w = (pi/100)*k; %Frequency between -pi and +pi
X = x * (exp(-1j*pi/100)).^(n'*k); % x DTFT

%decomposition
  [xe, xo, m] = evenodd(x, n); %Compute even and odd parts
  XE = xe * (exp(-1j*pi/100)).^(m'*k); %DTFT of xe
  XO = xo * (exp(-1j*pi/100)).^(m'*k); %DTFT of xo

%verification
  XR = real(X); %real of x
  error1 = max(abs(XE - XR)); 
  
  XI = imag(X); %imaginary of x
  error2 = max(abs(XO));

% graphical verification
  subplot(2,2,1); plot(w/pi,XR); grid; axis([-1,1,-2,2])
  xlabel('frequency in pi units'); ylabel('Re(X)');
  title('Real part of X')
  subplot(2,2,2); plot(w/pi,XI); grid; axis([-1,1,-10,10])
  xlabel('frequency in pi units'); ylabel('Im(X)');
  title('Imaginary part of X')
  subplot(2,2,3); plot(w/pi,real(XE)); grid; axis([-1,1,-2,2])
  xlabel('frequency in pi units'); ylabel('XE');
  title('Transform of even part')
  subplot(2,2,4); plot(w/pi,imag(XO)); grid; axis([-1,1,-10,10])
  xlabel('frequency in pi units');
