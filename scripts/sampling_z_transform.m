%% Time domain: (1/3)^n u(n)
N = 64;
n = 0:1:N-1;
x1 = (1/3).^n;

%% (DTFT) Compute for X(e^jw)
k=0:500; w1 = k*pi/500;
X1 =x1*(exp(-1i*pi/500)).^(n'*k);
figure, subplot(4,1,1); plot(w1, abs(X1));

%% (z-Transform) Generating X(z) using freqz function
b = 1; a = [1 -1/3];
[H, w] = freqz(b,a,200, 'whole');
normW = w*N/pi/2;
subplot(4,1,2); plot(normW, abs(H));
subplot(4,1,3); zplane(b,a);

%% (DFS) Assuming that the given is one cycle of a periodic signal
Xk=dfs(x1,N);
subplot(4,1,4); stem(n, abs(Xk));

% Sampling Xz
%  k = 0:1:N-1;
% n=0:1:N-1;
% wk = 2*pi*k/N; zk=exp(1i*wk);
% 0, 90, 180, 270
% 
% Xk = zk ./ (zk-(1/3));
% magXk = abs(Xk);
% 
% 
% stem(k, magXk);
% 
% xn=real(idfs(Xk,N));