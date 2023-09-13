function [y, ny] = conv_m(x,nx,h,nh)
% Modified convolution routine for signal processing
% ---------------------------------------------------
% [y, ny] = conv_m(x,nx,h,nh)
%   [y,ny]  - convolution result
%   [x,nx]  - first signal
%   [h,nh]  - second signal
% 
nyb = nx(1)+nh(1); %beginning index of y sequence
nye = nx(length(x))+nh(length(h));%end index of y sequence
ny = nyb:nye; y = conv(x,h);
end