% Keefe Gareth B. Laguerder
% Homework 4
% Example 3.10

n = -5:10;
x = rand(1,length(n)) + 1j*rand(1,length(n)); % Generating random complex signal

k = -100:100; 
w = (pi/100)*k; % Frequencies between -pi and +pi

% Compute DTFT of x
X = x * (exp(-1j*pi/100)).^(n'*k);

% Conjugation Property
y = conj(x); % Signal conjugation
Y = y * (exp(-1j*pi/100)).^(n'*k); % DTFT of y

% Verification
Y_check = conj(fliplr(X)); % conj(X(-w))
error = max(abs(Y-Y_check)); % Difference