% DTFT
n=0:0.01:20;
x1 = sin(0.1*pi*n);
plot(n,x1);
k=0:500; w=(pi/500)*k; % FD x-axis

X1=x1*(exp(-1i*pi/500)).^(n'*k); 
magX1 = abs(X1);
figure, subplot(2,1,1); plot(w/pi,magX1, 'Color', [.8, 0,0]); hold on;

m = 0:0.01:10;
x2a = sin(0.1*pi*m);
x2b = zeros(1,1000);
x2 = [x2a,x2b];
X2 = x2*(exp(-1i*pi/500)).^(n'*k);
magX2 = abs(X2);
plot(w/pi,magX2, 'Color', [0 0 0.8]); hold off;

%z Transform
k=0:1:255;
u=0:1:255;
xs1 = sin(0.1*pi*u);
Xk1 = dfs(xs1, 256);
magXk1 = abs(Xk1);
subplot(2,1,2); stem(k,magXk1, 'Color', [0.8,0,0]); hold on;

v = 0:1:127;
xs2a = sin(0.1*pi*v);
xs2b = zeros(1,128);
xs2 = [xs2a,xs2b];
Xk2 = dfs(xs2, 256);
magXk2 = abs(Xk2);
stem(k,magXk2,'Color',[0, 0, 0.8]); hold off;

