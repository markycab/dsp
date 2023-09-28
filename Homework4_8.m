% Ivan Lhoyd Olimba
% Homework4

%Generate a random signal with frequency indices
x = rand(1,11); n = 0:10;
k = 0:500; w = (pi/500)*k;

% Computation
X = x * (exp(-1j*pi/500)).^(n'*k);

% Signal shifted by two samples
y = x; m = n+2;
Y = y * (exp(-1j*pi/500)).^(m'*k); 

% Verification
Y_check = (exp(-1j*2).^w).*X; 
error = max(abs(Y-Y_check));

% Display error
disp(['error: ', num2str(error)]);