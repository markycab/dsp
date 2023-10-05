n = -5:10;
x = rand(1,length(n)) + j*rand(1,length(n)); 
k = -100:100; 
w = (pi/100)*k; 
% DTFT of x
X = x * (exp(-j*pi/100)).^(n'*k);
