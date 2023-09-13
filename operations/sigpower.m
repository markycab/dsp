function P = sigpower(x)
% Computes for the signal power of a power signal.
% -------------------------------------------------
% P = sigpower(x,n)
% 
E = sigenergy(x);
syms f x; 
f = E/(2*x+1);
P = limit(f,x,inf);
end