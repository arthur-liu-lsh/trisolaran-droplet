%Written by Eclypse-Prime

close all;
clear;
clc;

%%

N1 = 100;

a = 7/4;
b = 2/(3*sqrt(3));
T1 = linspace(0,2*pi,N1);

X = a * (1 + sin(T1));
Y = b * cos(T1) .* (1 + sin(T1));

figure();
plot(X,Y,'black', 'LineWidth',2);
xlim([-0.5 4])
axis equal
grid on

%%

N2 = 100;

T2 = linspace(pi/2, 3*pi/2, N2);
theta = linspace(0,2*pi,N2);

X2 = a * (1 + sin(T2));
Y2 = b * cos(T2) .* (1 + sin(T2));

Xs = repmat(X2', size(theta));
Ys = Y2' * cos(theta);
Zs = Y2' * sin(theta);

figure();
grey = 0.75;
sl = surfl(Xs,Ys,Zs,'light');
sl(2).Color = 'w';
sl(1).FaceColor = [grey grey grey];
sl(1).EdgeColor = 'none';
axis equal
