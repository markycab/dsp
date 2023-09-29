x = rand(1,length(n));
n = -5:10; 
k = -100:100; w = (pi/100)*k;   % freq -pi and +pi
X= x * (exp(-j*pi/100)).^(n'*k); % DTFT of x



y = fliplr(x); m = -fliplr(n);  
Y= y * (exp(-j*pi/100)).^(m'*k); % DTFT of y



Y_check = fliplr(X);           
error = max(abs(Y-Y_check)) 