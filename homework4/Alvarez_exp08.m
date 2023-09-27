%alvarezexp08
%random signal with frequency indices
x = rand(1,11); n = 0:10;
k = 0:500; w = (pi/500)*k;

%DTFT of x
X = x * (exp(-1i * pi / 500)).^(n'*k);

%Signal shifted by two samples
y = x; m = n+2;
Y = y * (exp(-1i * pi / 500)).^(m'*k); % DTFT of y

%Validation
Y_check = (exp(-1i * 2).^w).*X; % Multiplication by exp(-j2w)
error = max(abs(Y-Y_check));

disp(['error: ', num2str(error)]);

