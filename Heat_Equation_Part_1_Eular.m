% Inhomogeneous heat equation
clear all;clc;
%% Setup
close all;
alpha = 1;
dx = .01;
x =0:dx:1;
X=x';
N=length(X);
dt=0.0001;
t=0:dt:8;
T=zeros(N,length(t));
u=0.08;

%% initial condition
for j=1:N
    if X(j,1)<=0.2
        T(j,1)=1-(10*X(j,1)-1)^2;
    else
        T(j,1)=0;
    end
end
%% Part 1-Explicit Eular Time advancement
for m=1:length(t)-1
    for n=2:length(x)-1
        T(n,m+1)=T(n,m)-((dt*u)/(dx*2))*(T(n+1,m)-T(n-1,m));
    end
end
figure(1)
plot(x,T(:,1),'Linewidth',1.5);
hold on
plot(x,T(:,20001),'Linewidth',1.5);
hold on
plot(x,T(:,40001),'Linewidth',1.5);
hold on
plot(x,T(:,60001),'Linewidth',1.5);
hold on
plot(x,T(:,80001),'Linewidth',1.5);
hold on
title('Explicit Eular time advancement');
legend('t=0 sec','t=2 sec','t=4 sec','t=6 sec','t=8 sec');





