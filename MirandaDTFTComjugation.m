n = -5:10;
x = rand(1,length(n)) + j*rand(1,length(n)); % to generate a complex valued signal x
k = -100:100; 
w = (pi/100)*k; 
X = x * (exp(-j*pi/100)).^(n'*k); % computes the DTFT of the signal x
