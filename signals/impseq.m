function [x,n] = impseq(n0,n1,n2)
% Generates x(n) = delta(n-n0); n1 <= n0 <= n2
% ----------------------------------------------
% [x,n] = impseq(n0, n1, n2)
%
n = [n1:n2]; x = [(n-n0) == 0];