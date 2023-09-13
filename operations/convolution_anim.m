function convolution_anim (n1, xn, n2, hn)
% animates convolution of two sequences

% 1. Flip one of the sequences, hn
fhn = fliplr(hn); 

% 2. Add a time-offset, k, which allows the flipped function to slide along
% the n axis.
a = min(n1)-(length(n2)-1);  % instead of starting with k = -inf, we chose the
                     % point where the flipped sequence is at the far left
                     % of xn
b = max(n1)+(length(n2)); %max intersected index for shifting
c = min(n1)-(length(n1)+length(n2)-1);
nn = a:b; %expected range of convolution result indices
hnn = c:b; 

% for MATLAB'S CONSIDERATION, replot the two sequences to have equal
% lengths: xn -> XN, hn -> HN 
XN = zeros(1,length(nn)); HN = zeros(1,length(hnn));
XN(find((nn>=min(n1))&(nn<=max(n1))==1))=xn;
HN(find((nn>=min(n2))&(nn<=max(n2))==1))=hn;

% plot original sequences
stem(nn,XN,'filled'); hold on; grid minor; stem(hnn,HN,'r');
axis([min(nn)-2,max(nn)+2,-4,12]); 
X(1) = getframe; hold off;

FHN = zeros(1,length(hnn));
FHN(find((nn>=min(n2))&(nn<=max(n2))==1))=fhn;
% plot flipped sequences
stem(nn,XN, 'filled'); hold on; grid minor; stem(hnn,FHN, 'r');
axis([min(nn)-2,max(nn)+2,-4,12]); 
X(2) = getframe; hold off;

FHN=[zeros(1,length(nn)),FHN];
hnn = min(hnn)-length(nn):max(hnn);
k = min(find(FHN,1)); %value of first convolution index (first offset)
% plot shifted flipped sequences
stem(nn,XN, 'filled'); hold on; grid minor; stem(hnn,FHN, 'r');
axis([max(min(nn),min(hnn))-2,max(nn)+2,-4,12]); 
X(3) = getframe; hold off;

% 3. For every k that the two sequences intersect, find the sum of elemental
% products of the two sequences.
R = zeros(1, length(nn));
for index = 1:length(nn)
    sum=0;
    for p = 1:length(nn)-1;
        xt = XN(p);
        xtt = FHN(p+k);
        sum = sum+XN(p)*FHN(p+k);
    end
    R(index) = sum;
    stem(nn, R, 'sk'); 
    hold on; grid minor; stem(nn, XN, 'filled'); stem(hnn, FHN, 'r');
    axis([max(min(nn),min(hnn))-2,max(nn)+2,-4,12]); 
    X(index+2) = getframe; hold off;
    hnn = hnn+1; k=k-1;
end

%% Animate
movie(X, 30, 2);
end