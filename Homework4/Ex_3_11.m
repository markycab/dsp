n = -5:10;
x = rand(1, length(n));
k = -100:100;
w = (pi / 100) * k; % Frequency between -pi and +pi

X = x * (exp(-1j * pi / 100)).^(n' * k); % DTFT of x

% Folding property
y = fliplr(x);
m = -fliplr(n); % Signal folding

Y = y * (exp(-1j * pi / 100)).^(m' * k); % DTFT of y

% Verification
Y_check = fliplr(X); % X(-w)
error = max(abs(Y - Y_check))