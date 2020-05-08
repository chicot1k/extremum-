v=0;
u=0;

a=0;
b=5;
t=['x^v*ln(x)'];
x=linspace(a,b,200);
for i=1:4
v=2*i;
u=3*i;
f=@(x) (x.^v).*exp(1).^-u.*x;
plot(x,f(x));
hold on;
end
grid on;
xlabel('x'); ylabel('y'); title(t);
xr=ginput(2);
for i=1:4
f=@(x) (x.^v).*exp(1).^-u.*x;
v=2*i;
u=3*i;
[x_m,y_m]=fminbnd(f,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
end