% Keefe Gareth B. Laguerder
% Homework 4
% Example 3.8

% Generate a random signal with frequency indices
x = rand(1,11); n = 0:10;
k = 0:500; w = (pi/500)*k;

% Compute DTFT of x
X = x * (exp(-1j*pi/500)).^(n'*k);

% Signal shifted by two samples
y = x; m = n+2;
Y = y * (exp(-1j*pi/500)).^(m'*k); % DTFT of y

% Verification
Y_check = (exp(-1j*2).^w).*X; % Multiplication by exp(-j2w)
error = max(abs(Y-Y_check));

% Displays error
disp(['error: ', num2str(error)]);