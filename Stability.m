
clear all
x = linspace(-0.1,0.1,100);
y = x;
[X,Y] = meshgrid(x,y);

a = 1;
b = 3;
c = 0;
d = -10;

Z = OHev(a*Y+Y.^2*b+Y.^3*c+Y.*X.^2*d);



surf(X,Y,a*Y+Y.^2*b+Y.^3*c+Y.*X.^2*d)

