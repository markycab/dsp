n = -5:10; % 
x = rand(1, length(n)); % real valued signal
k = -100:100; 
w = (pi/100)*k; % Frequencies between -pi and +pi
X = x * (exp(-1j*pi/100)).^(n'*k); % computes the the dtft of the sginal x 