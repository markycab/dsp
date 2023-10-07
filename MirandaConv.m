% Modified Convolution for Signal Processing
function [Y,Ny] = conv_m(X,Nx,H,Nh)
Nyb = NX(1)+Nh(1); Nye = NX(length(X)) + Nh(length(H));
Ny = [Nyb:Nye]; Y = conv(X,H);