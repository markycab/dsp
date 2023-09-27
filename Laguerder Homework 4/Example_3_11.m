% Keefe Gareth B. Laguerder
% Homework 4
% Example 3.11

n = -5:10;
x = rand(1,length(n)); % Generating a random signal

k = -100:100; 
w = (pi/100)*k; % Frequency between -pi and pi

% Compute DTFT of x
X = x * (exp(-1j*pi/100)).^(n'*k);

% Using Folding property
y = fliplr(x); 
m = -fliplr(n); % Signal folding
Y = y * (exp(-1j*pi/100)).^(m'*k); % DTFT of y

% Verification
Y_check = fliplr(X); % X(-w)
error = max(abs(Y-Y_check)); % Difference