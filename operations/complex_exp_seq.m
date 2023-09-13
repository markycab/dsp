function [x,n] = complex_exp_seq(cmplx, n1, n2)
% Generates a complex-valued exponential sequence
% ----------------------------------------------
% [x,n] = complex_exp_seq(cmplx, n1, n2)
%   x = complex exponential function (e^(cmplx*n))
%   note: cmplx follows the form (a+bj)
%   n = domain of sequence
%   base = real number base
%   n1,n2 = range of domain
% 
n = n1:n2; x = exp(cmplx*n);
end