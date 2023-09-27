n = -5:10;
x = rand(1, length(n)) + 1i * rand(1, length(n)); % Use '1i' for the imaginary unit
k = -100:100;
w = (pi / 100) * k; % Frequency between -pi and +pi

X = x * (exp(-1j * pi / 100)).^(n' * k); % DTFT of x

% Conjugation property
y = conj(x); % Signal conjugation
Y = y * (exp(-1j * pi / 100)).^(n' * k); % DTFT of y

% Verification
Y_check = conj(fliplr(X)); % Conjugate of X(-w)
error = max(abs(Y - Y_check));