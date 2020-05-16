%%%%%%%%线阵方向图（指向为30°）%%%%%%%%
clc;
clear;
%close all;

c = 3e8;
Fc = 4.75e6;
lamda = c/Fc;
d = lamda/2;
theta_d = 30;
m = 16;
w = chebwin(m,30);

theta = -pi:pi/2000:pi;
theta_d1 = theta_d/180*pi;
beta = 2*pi*d*sin(theta)/lamda;
beta_d = 2*pi*d*sin(theta_d1)/lamda;

Y=0;
for i = 1:m
%         Y = Y+w(i).*exp(-j*(i-1)*(beta-beta_d));
        Y = Y+exp(-j*(i-1)*(beta-beta_d));
end

G0 = abs(Y)/max(abs(Y));
G=20*log10(abs(G0));

figure(1)
plot(theta/pi*180,G,'linewidth',1.5);
grid on
axis([-90 90 -50 0]);
title('线阵方向图（指向为30°）');
xlabel('方位角/(°)');
ylabel('G(theta)/dB');

figure(2)
theta = theta;
polar(theta,G0)
title ('Array pattern')

figure(3)
polar(theta,G0)
title ('Power pattern [dB]')