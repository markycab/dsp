b=1; a=[1, -6, 9];
[d,n]=impseq(0,0,7);
x1=filter(b,a,d);
x2=(n+1).*3.^n.*stepseq(0,0,7);
diff=max(abs(x1-x2))
