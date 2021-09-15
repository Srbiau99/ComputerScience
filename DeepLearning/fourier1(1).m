function [a,b,b0]=fourier1(n,f1)
lef=length(f1);f=double(f1');
t=linspace(-pi,pi,lef); delta=t(2)-t(1);
a=zeros(1,n);b=a;

for i=1:n
    a(i)=sum(f.*sin(i*t))*delta/pi;
    b(i)=sum(f.*cos(i*t))*delta/pi;
end
b0=sum(f)*delta/(2*pi);

end
