N=100;
L1=0;
L2=2.*pi;
m=3;
X=linspace(L1,L2,N);
Y=func(X,m);
plot(X,Y)
grid on;
title('t');
xlabel('x');
ylabel('f(x)');
xr=ginput(2);
[x_m,y_m]=fminbnd(@func,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*')
hold off