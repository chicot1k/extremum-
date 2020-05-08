Y=@(X)2-abs(X).*exp(1).^-abs(X-1)
fplot(Y,[0,4])
grid on;
title('t');
xlabel('x');
ylabel('f(x)');
xr=ginput(2);
[x_m,y_m]=fminbnd(@func,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*')
hold off