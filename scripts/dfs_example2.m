L=5;
N=10;
xn=[ones(1,L),zeros(1, N-L)];
xnp = repmat(xn,1,4);
Xk=dfs(xn,N);
n=0:1:39;
k=0:1:39;
magXk = abs(Xk);
magXkp = repmat(magXk,1,4);
figure, subplot(1,2,1); stem(n,xnp); grid;
subplot(1,2,2); stem(k,magXkp);grid;