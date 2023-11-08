%% 
% X(z)= 1/1-(1/3)z^-1 x(n)=(1/3)^n * u(n)

b=1; a=[1 1];
[d,n]=impseq(0,-10, 10);

x1 = filter(b,a,d);

figure, subplot(1,2,1); zplane(b,a); grid
subplot(1,2,2); stem(n,x1); grid
lbls=sprintfc('%.4f',x1);
text(n,x1,lbls,...
    'HorizontalAlignment','center',...
    'VerticalAlignment','bottom',...
    'FontSize',8);