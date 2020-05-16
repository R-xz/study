%%%%%%%%线阵方向图（指向为0°）%%%%%%%%
% clc;
% clear;
% close all;

c=3e8;
Fc=4.75e6;
lamda=c/Fc;
d=0.59*lamda;
m=16;

theta=-pi/2:pi/2000:pi/2;
beta=2*pi*d*sin(theta)/lamda;
G=20*log10(abs(sin(m*beta/2)./(m*sin(beta/2))));
figure(1);
plot(theta/pi*180,G,'linewidth',1.5);
grid on
axis([-90 90 -50 0]);
title('线阵方向图（指向为0°）');
xlabel('方位角/(°)');
ylabel('G(theta)/dB');



%%%%%%%%线阵方向图（指向为30°）%%%%%%%%
% clc;
% clear;
% 
% c=3e8;
% Fc=4.75e6;
% lamda=c/Fc;
% d=lamda/2;
% theta_d=30;
% m=17;
% 
% theta=-90:0.05:90;
% theta1=theta/180*pi;
% theta_d1=theta_d/180*pi;
% beta=2*pi*d*sin(theta1)/lamda;
% beta_d=2*pi*d*sin(theta_d1)/lamda;
% G=20*log10(abs(sin(m*(beta-beta_d)/2)./(m*sin((beta-beta_d)/2))));
% figure(2);
% plot(theta,G,'linewidth',1.5);
% grid on
% axis([-90 90 -50 0]);
% title('线阵方向图（指向为30°）');
% xlabel('方位角/(°)');
% ylabel('G(theta)/dB');