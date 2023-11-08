%% y(n) = 0.8y(n-1) + x(n)
% y is an exponential function
% y(n) = C(lambda)^n; y(n-1)= C(lambda)^n-1
n = 0:100;
h = (0.8).^n;
k = 0:500; w = (pi/500)*k;
%1. Determine the frequency response
H = h * (exp(-1i * pi/500)).^(n'*k);
% H = 1/(1-0.8^-jw)
%transfer function: 'filter'


%2. Plot its response to x(n) = cos(0.05pi n)u(n)
x = cos(0.05*pi*n);
%filter(B,A,X); H = B/A X - freq domain input
%y = H * x;
y = filter(1,[1, -0.8],x);
figure, subplot(3,1,1); stem(n,x);
title('Input');
subplot(3,1,2); plot(w*1/pi, H);
title('Freq Response');
subplot(3,1,3); stem(n, y);
title('Output');



