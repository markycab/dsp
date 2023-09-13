function X = dtft(x,n,w)
% Computes Discrete-time Fourier Transform
% [X] = dtft(x,n,w)
%   X = DTFT values computed at w frequencies
%   x = finite duration sequence over n
%   n = sample position vector
%   w = frequency location vector

N = length(w)-1;
k = w/(pi/N);
X = x*(exp(-j*2*pi/N)).^(n'*k);

end