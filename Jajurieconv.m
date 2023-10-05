function [y,ny] = conv_m(x,nx,h,nh)
% Modified Convolution for Signal Processing
% [y,ny] = conv_m(x,nx,h,nh)
% [y,ny] = Convolution Result
% [x,nx] = First Signal
% [h,nh] = Second Signal
nyb = nx(1)+nh(1); nye = nx(length(x)) + nh(length(h));
ny = [nyb:nye]; y = conv(x,h);