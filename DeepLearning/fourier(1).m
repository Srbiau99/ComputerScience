function [a,b,b0]=fourier(n)
t=-pi:.002:pi; delta=t(2)-t(1);
a=zeros(1,n);b=a;
f=t.^2;
for i=1:n
    a(i)=sum(f.*sin(i*t))*delta/pi;
    b(i)=sum(f.*cos(i*t))*delta/pi;
end
b0=sum(f)*delta/(2*pi);

end


