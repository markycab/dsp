function [xec,xoc,m]=evenodd_complex(x,n)
% Generates conjugate-symmetric and conjugate-asymmetric components of a
% complex-valued sequence.
%-------------------------------------------------------------------------

m = -fliplr(n);
m1 = min([m,n]); m2 = max([m,n]); m = m1:m2;
nm = n(1)-m(1); n1 = 1:length(n);
x1 = zeros(1,length(m)); x1(n1+nm) = x; x= x1;
xec=0.5*(x+fliplr(conj(x)));
xoc=0.5*(x-fliplr(conj(x)));
end