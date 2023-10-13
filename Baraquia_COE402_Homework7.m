clc;
clear all;
close all;

%%Baraquia Homerwork 7

%% 2 %%

fprintf('<strong> 4.1.2 </strong> \n' ); 

syms z n;
x =(0.8)^n*heaviside(n-2);
X =ztrans(x)
X = ztrans(n, z)

%% 3 %%

fprintf('<strong> 4.1.3 </strong> \n' ); 

syms z n;
x =(0.8)^n*heaviside(n-2);
X = ztrans(x)

x =((0.5)^n+(-0.8)^n)*heaviside(n)
X = ztrans(x)
X = ztrans(n, z)

%% 5 %%

fprintf('<strong> 4.1.5 </strong>  \n' ); 

syms z n;


x = (n + 1) * 3^n * heaviside(n);
X =  ztrans(x)
X = ztrans(n, z)



