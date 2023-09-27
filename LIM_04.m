
n = -5:10;
x = rand(1,length(n)) + j*rand(1,length(n)); 

k = -100:100; 
w = (pi/100)*k; %Frequency between -pi and +pi

X = x * (exp(-j*pi/100)).^(n'*k); %DTFT of x

%Conjugation Property
y = conj(x); 
Y = y * (exp(-j*pi/100)).^(n'*k); %DTFT of y

% Verification
Y_check = conj(fliplr(X)); 
error = max(abs(Y-Y_check))