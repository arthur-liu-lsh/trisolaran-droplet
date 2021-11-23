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
T1 = linspace(0,2*pi,N1);

X1 = a * (1 + sin(T1));
Y1 = b * cos(T1) .* (1 + sin(T1));

figure();
plot(X1,Y1,'black', 'LineWidth',2);
xlim([-0.5 4])
axis equal
grid on

%% Half-curve for revolution

N1 = 100;
T1 = linspace(3*pi/2, 5*pi/2,N1);

X1 = a * (1 + sin(T1));
Y1 = b * cos(T1) .* (1 + sin(T1));

figure();
plot(X1,Y1,'black', 'LineWidth',2);
xlim([-0.5 4])
axis equal
grid on

%% 3D render

N2 = 1000;

T2 = linspace(3*pi/2, 5*pi/2, N2);
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

%% Area, volume, and mass calculations

fprintf('Numerical applications:\n');

r = 0.5;
h = 3;

% sigma = 656;

A1 = pi*r*(2*r + sqrt(r^2+h^2));
V1 = 1/3*pi*r^2*(2*r + h);

fprintf('Approx area: %3.2fm�\nApprox volume: %3.2fm�\n',A1,V1);
fprintf('Piriform area: %3.2fm�\nPiriform volume: %3.2fm�\n',A2,V2);

A2 = pi^2*b*(3*b^2+a^2)/a;
V2 = 8/5*pi*a*b^2;
% m = A2*sigma;

fprintf('\n');