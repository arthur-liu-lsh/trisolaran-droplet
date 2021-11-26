%Written by Eclypse-Prime

close all;
clear;
clc;

%% Piriform parameters

% Those parameters are chosen in order to have a droplet of length and width 3.5m and 1m respectively.
a = 7/4;
b = 2/(3*sqrt(3));
% In general :
% - The length of the piriform along the x axis will be equal to 2*a
% - The width of the piriform along the y axis will be equal to 3*sqrt(3)/2
% - The max and min values of the curve along the y axis will be equal to 3*sqrt(3)/4 and -3*sqrt(3)/4 respectively

%% 2D render

N1 = 100;
[X1,Y1] = generatePiriform2d(a,b,N1);

figure();
plot(X1,Y1,'black', 'LineWidth',2);
xlim([-0.5 4])
axis equal
grid on

%% Half-curve for revolution

N1 = 100;
[X1,Y1] = generateHalfPiriform2d(a,b,N1);

figure();
plot(X1,Y1,'black', 'LineWidth',2);
xlim([-0.5 4])
axis equal
grid on

%% 3D render

N2 = 1000;
[X2,Y2,Z2] = generatePiriform3d(a,b,N2,N2);

figure();
grey = 0.75;
sl = surfl(X2,Y2,Z2,'light');
sl(2).Color = 'w';
sl(1).FaceColor = [grey grey grey];
sl(1).EdgeColor = 'none';
axis equal

