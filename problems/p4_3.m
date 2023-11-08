b = [2 0.3]; a = [1, 0.3, -0.4];
[d,n]=impseq(0,0,7);
x1 = filter(b, a, d);
x2 = [(0.5).^n + (-0.8).^n].*stepseq(0,0,7);
diff = max(abs(x1-x2))