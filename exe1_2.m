% e^(2x),[0,1],xi=i/10,抛分,计算导数 和 二阶导数
% 一阶导数 三种公式；二阶导数 一种公式
% 与精确值比较
%% 下面计算x=0.2的导数值
clc,clear
i=1;x=0.2; % 网格抛分大小 所求点
xi=i/10; % xi=h
f1f=(exp(1)^(2*(x+xi))-exp(1)^(2*x))/xi; % 向前一阶插商(1)
f1b=(exp(1)^(2*x)-exp(1)^(2*(x-xi)))/xi; % 向后一阶插商(1)
f1c=(exp(1)^(2*(x+xi))-exp(1)^(2*(x-xi)))/(2*xi); % 中心二阶阶插商(1)
f2c=(exp(1)^(2*(x+xi))+(exp(1)^(2*(x-xi))-2*exp(1)^(2*x)))/(xi^2);  % 中心二阶差商(2)
df=2*exp(2*x);
d2f=4*exp(2*x);
%% 下面记录x=0.2的导数值
page_x1=zeros(4,2);
page_x1(1)=f1f;page_x1(5)=f1f-df;
page_x1(2)=f1b;page_x1(6)=f1b-df;
page_x1(3)=f1c;page_x1(7)=f1c-df;
page_x1(4)=df;page_x1(8)=df-df;

%% 下面记录x=0.4的二阶导数值
x=0.4;
page_xx1=zeros(2,2);
page_xx1(1)=f2c;page_xx1(3)=f2c-d2f;
page_xx1(2)=d2f;page_xx1(4)=0;
