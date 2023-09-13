function [y,n]=sigmult(x1,n1,x2,n2)
% Implements y(n) = x1(n)*x2(n)
% -------------------------------
% [y,n]=sigmult(x1,n1,x2,n2)
%   y       - product sequence over n, which includes n1 and n2
%   x1      - first sequence over n1
%   x2      - second sequence over n2
% 
n = min(min(n1),min(n2)):max(max(n1),max(n2));
y1 = zeros(1,length(n)); y2 = y1;
y1((n>=min(n1))&(n<=max(n1))==1)=x1;
y2((n>=min(n2))&(n<=max(n2))==1)=x2;
y = y1.*y2;
end