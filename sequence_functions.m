%TURNO

%Real-valued exponential sequence
n = [0:10]; x = (0.9).^n

%Complex-valued exponential sequence:
n = [0:10]; x = exp((2+3j)*n);

%Sinusoidal sequence:
n = [0:10]; x = 3*cos(0.1*pi*n+pi/3) + 2*sin(0.5*pi*n);

%Periodic seq
xtilde = x’ * ones(1,P); % P columns of x; x is a row vector
xtilde = xtilde(:); % long column vector
xtilde = xtilde’; % long row vector


