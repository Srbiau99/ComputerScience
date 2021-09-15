function tasvir(n1)
 A=imread('C:\Pictures\1.jpg');
 B=A(1:500,1:500,:);
 C=rgb2gray(B);D=0*C;
 imshow(C)

 t=linspace(-pi,pi,500);t=t';
 for i=1:500
     f=C(:,i);
 [a,b,b0]=fourier1(n1,f);
 h=double(f*0);
     for k=1:n1
         h=a(k)*sin(k*t)+b(k)*cos(k*t)+h;
     end
     h=h+b0;
     D(:,i)=h;
 end
 figure
 imshow(D)
 