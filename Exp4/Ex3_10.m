n = -5:10;
x = rand(1, length(n)) + 1i * rand(1, length(n)); % Used 1i instead of j for complex numbers
k = -100:100;
w = (pi / 100) * k; % frequency between -pi and +pi

X = x * (exp(-1i * pi / 100)).^(n' * k); % DTFT of x

% Conjugation property
y = conj(x); % Signal conjugation
Y = y * (exp(-1i * pi / 100)).^(n' * k); % DTFT of y

% Verification
Y_check = conj(fliplr(X)); % conj(X(-w))
error = max(abs(Y - Y_check)); % Difference