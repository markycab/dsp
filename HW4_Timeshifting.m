x = rand(1,11); t = 0:10;
k = 0:500; w = (pi/500)*k;

%to compute dtft of x
X= x* (exp(-j*pi/500)).^(t'*k);

%the signal shifted by two samples
y = x; m = t+2;
Y= y* (exp(-j*pi/500)).^(m'*k); %dtft of y

%verify
Y_check = (exp(-j*2).^w).*X; %multiplication by exp(-j2w)
error = max(abs(Y-Y_check))