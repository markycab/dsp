function [x,n] = real_exp_seq(base, n1, n2)
% Generates a real-valued exponential sequence
% ----------------------------------------------
% [x,n] = rexpseq(base, n1, n2)
%   x = real exponential function (base^sequence)
%   n = domain of sequence
%   base = real number base
%   n1,n2 = range of domain
% 
n = n1:n2; x = base.^n;
end