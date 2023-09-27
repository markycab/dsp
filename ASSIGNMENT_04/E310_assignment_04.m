clc 
clear

 n = -5:10; x = rand(1,length(n)) + 1i*rand(1,length(n));
 k = -100:100; w = (pi/100)*k; % frequency between -pi and +pi
X=x* (exp(-1i*pi/100)).^(n'*k); % DTFT of x
% con1iugation property
y = conj(x); % signal con1iugation
Y=y* (exp(-1i*pi/100)).^(n'*k); % DTFT of y
% verification
Y_check = con1i(fliplr(X)); % con1i(X(-w))
error = max(abs(Y-Y_check)); % Difference
display(error); 