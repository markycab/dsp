x = rand(1,length(n)) + j*rand(1,length(n));
n = -5:10; 
k = -100:100; w = (pi/100)*k;       %-pi and +pi freq
X= x * (exp(-j*pi/100)).^(n'*k);    % DTFT of X

%conjugation
y = conj(x);                     % signal conjugation
Y= y * (exp(-j*pi/100)).^(n'*k); % DTFT of Y

%verification
Y_check = conj(fliplr(X));         
error = max(abs(Y-Y_check))         