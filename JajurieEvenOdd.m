Function [xe,xo,m] = evenodd(x,n)
% [xe,xo,m] = evenodd(x,n)
If any(imag(x)~=0)
error('x IS NOT REAL SEQUENCE')
end
m = -fliplr(n);