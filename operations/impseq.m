function [x,n] = impseq(n0, n1, n2)
% Generates x(n) = delta(n-n0); n1<=n<=n2
% ----------------------------------------
% [x,n] = impseq (n0, n1, n2)
%   [x,n]   - impulse sequence
%   [n1,n2] - domain of sequence
%   n0      - impulse sample point
%   
n = n1:n2; x = (n-n0) == 0;
end