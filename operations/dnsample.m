function [y,m]=dnsample(x,n,M)
% Downsample sequence x(n) by a factor M to obtain y(m)

m = zeros(1,length(n));
r =[];
y = m;
k=1;
for i=1:length(n)
    if mod(i,M)==0
        m(i)=n(i-1);
        y(i)=x(i-1);
    else
       r(k)=i; k=k+1; 
    end
end
y(r)=[];
m(r)=[];
m=(1/M)*m;
end