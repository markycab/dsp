function plotseq(x,n)
% Plots a discrete-time sequence
% --------------------------------
% plotseq(x,n)
%   x   - discrete-time sequence such as impseq
%   n   - domain of the sequence
% 
stem(n,x,'filled','r'); grid on;
axis([min(n)-0.5, max(n)+0.5, min(x)-0.5, max(x)+0.5]); 
end