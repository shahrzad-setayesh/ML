

close all;
clc;

% computing LDA
x1=[4,2;
    2,4;
    2,3;
    3,6;
    4,4];
x2=[9,10;
    6,8;
    9,5;
    8,7;
    10,8];



mu1=mean(x1);
mu2=mean(x2);

s1=cov(x1);
s2=cov(x2);

sw=s1+s2;
sb=(mu1-mu2).*(mu1-mu2)';

invesw=inv(sw);
invswsb=invesw * sb;
[v,d]=eig(invswsb);

w1=v(:,1);
w2=v(:,2);

%visualizae
t=-7:15;

linex1=t.*w1(1);
liney1=t.*w1(2);

t=-7:15;

linex2=t.*w2(1);
liney2=t.*w2(2);
plot(linex1,liney1,'linewidth',2);
hold on 
plot(linex2,liney2,'linewidth',2);
grid on 
plot(x2(:,1),x2(:,2),'*',x1(:,1),x1(:,2),'.','linewidth',1);
