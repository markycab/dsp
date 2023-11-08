%% Notes on stability and causality in the z-domain
% In this article, we demonstrate the relationship between z-domain
% zero-pole plot and the time-domain plot of a signal.

%% Case 1: Pole lies on the unit circle
% 
% $$X(z)=\frac{z^-1}{1+z^-1}$$
% 

b1 = [0 1]; a1=[1 1];
[d,n]=impseq(0,-8,8);
x1 = filter(b1,a1,d);

%% Case 2: Pole lies inside the unit circle
% 
% $$X(z)=\frac{z^-1}{1+(1/2)z^-1}$$
% 
b2 = [0 1]; a2=[1 0.5];
x2 = filter(b2,a2,d);

%% Case 3: Pole lies outside the unit circle
% 
% $$X(z)=\frac{z^-1}{1+2z^-1}$$
%

b3 = [0 1]; a3 = [1 2];
x3 = filter(b3,a3,d);

%% Plots
figure('units','normalized','outerposition',[0,0,1,1])
subplot(3,2,1); zplane(b1,a1);
grid
subplot(3,2,2); stem(n,x1); 
grid
ylim([-1.5,1.5])
lbls=sprintfc('%0.1f',x1);
text(n,x1,lbls,'HorizontalAlignment','center', ...
'VerticalAlignment','bottom','FontSize',8)
subplot(3,2,3); zplane(b2,a2);
grid
subplot(3,2,4); stem(n,x2);
grid
ylim([-1.5,1.5])
lbls=sprintfc('%0.4f',x2);
text(n,x2,lbls,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom','FontSize',8)
subplot(3,2,5); zplane(b3,a3);
grid
subplot(3,2,6); stem(n,x3);
grid
ylim([-150,100])
lbls=sprintfc('%0.1f',x3);
text(n,x3,lbls,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom','FontSize',8)

