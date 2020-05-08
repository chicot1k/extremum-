function F=func(X,m)
global m
global par T
F=0;
d=[3,5,2,-1];
for i = 1:m
   previos=F;
    F=previos+(d(i)-sin(i.*X)).^2
end
end

