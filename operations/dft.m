function [Xk]=dft (xn, n, N)
% Computes Discrete Fourier Transform
% [Xk] = dft(xn,n,N)
%   Xk = DFT coefficient array over 0<=k<=N-1
%   xn = N-point finite duration sequence
%   N = length of DFT


Xk = zeros(1,length(N));
for i = 1:N
    X = xn.*exp(-1i*2*pi/N*(i-1)*n);
    Xk(i)=sum(X);
end
end