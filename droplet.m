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


%% Numerical applications

fprintf('Numerical applications:\n');

r = 0.5;
h = 3;

% sigma = 656;

A1 = pi*r*(2*r + sqrt(r^2+h^2));
V1 = 1/3*pi*r^2*(2*r + h);

fprintf('Approx area: %3.2fm²\nApprox volume: %3.2fm³\n',A1,V1);

A2 = pi^2*b*(3*b^2+a^2)/a;
V2 = 8/5*pi*a*b^2;

fprintf('Piriform area: %3.2fm²\nPiriform volume: %3.2fm³\n',A2,V2);
% m = A2*sigma;

fprintf('\n');
