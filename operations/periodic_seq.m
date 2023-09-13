function [x,n] = periodic_seq (xn, k, n1)
% Generates a periodic sequence with k repetitions of fundamental sequence
% x(n)
% ----------------------------------------------------------------------
% [x,n] = periodic_seq (xn, k)
%   x = periodic sequence xtilde
%   n = index of periodic sequence
%   xn = fundamental sequence
%   k = number of repetitions
%   n1 = initial position

x = xn'*ones(1,k);
x = x(:)';
n = n1:n1+length(x)-1;
end