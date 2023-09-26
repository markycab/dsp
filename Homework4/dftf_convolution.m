%turno

 % Generating random complex signal
n = 0:10;
x = rand(1,length(n)); m=0:4; h=rand(1,length(m));

% Defining frequency indices and their corresponding values
k = 0:500; 
w = (pi/500)*k; % Frequencies between -pi and +pi

% Performing convolution
[y, ny] = conv_m(x, n, h, m);

% Computing DTFT of y
Y=y*(exp(-j*pi/500)).^(ny'*k);

% Computing DTFT of x and h
X=x*(exp(-j*pi/500)).^(n'*k);
H=h*(exp(-j*pi/500)).^(m'*k);

error = max(abs(Y-X.*H))% Difference

