% 已知精确解是y=sqrt(1+2*x)
%% 欧拉方法
clc,clear
n=10;h=(1-0)/n;
x=0;y=1;i=0;
page=zeros(10,4);
while x<0.99 % x=1
    y=y+h*(y-2*x/y);
    x=x+h;
    i=i+1;
    y_acc=sqrt(1+2*x);
    err=abs(y_acc-y);
    page(i,1)=x;
    page(i,2)=y;
    page(i,3)=y_acc;
    page(i,4)=err;
end

%% 梯形方法，迭代误差10^(-4)
clc,clear
n=10;h=(1-0)/n;
x=0;y=1;i=1; % 增加难度，从i=1开始
page=zeros(10,5);
while x<0.99
    y0=y+h*(y-2*x/y);
    yk=y+h/2*((y-2*x/y)+(y0-2*x/y0));
    xi=x+h;
    yk1=y+h/2*((y-2*x/y)+(yk-2*xi/yk));
    err_k=abs(yk1-yk);
    time=1;  
    while err_k>10^(-4)
        time=time+1;
        yk=yk1;
        yk1=y+h/2*((y-2*x/y)+(yk-2*xi/yk));
        err_k=abs(yk1-yk);
    end
    y=yk1;
    x=x+h;
    y_acc=sqrt(1+2*x);
    err=abs(y_acc-y);
    page(i,1)=x;
    page(i,2)=time;
    page(i,3)=y;
    page(i,4)=sqrt(1+2*x);
    page(i,5)=err;
    i=i+1;
end











