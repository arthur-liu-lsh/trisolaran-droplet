%Written by Eclypse-Prime

close all;
clear;
clc;

%% Approximate form parameters

% The shape of a droplet can be approximated by combining a hemisphere and a cone
% The hemisphere has a radius r
% The cone has a base radius r and a height h
% Those parameters are chosen in order to have a droplet of length and width 3.5m and 1m respectively.
r = 0.5;
h = 3;

%% Piriform parameters

% Those parameters are chosen in order to have a droplet of length and width 3.5m and 1m respectively.
a = 7/4;
b = 2/(3*sqrt(3));
% In general :
% - The length of the piriform along the x axis will be equal to 2*a
% - The width of the piriform along the y axis will be equal to 3*sqrt(3)/2
% - The max and min values of the curve along the y axis will be equal to 3*sqrt(3)/4 and -3*sqrt(3)/4 respectively

%% Neutron constants

% Mass of a neutron
m = 1.6726e-27;

% Distance between neutrons (also neutron radius)
d = 1.684e-15;

%% Area density

% The area density is calculated with the following formula:
% sigma = Z*m/A where :
% - Z is the number of neutrons per cell
% - m is the mass of a neutron
% - A is the area of a cell

% Triangular structure
sigmaTri = (1/2)*m/(sqrt(3)/4*d^2);

% Hexagonal structure
sigmaHex = 2*m/(3*sqrt(3)/2*d^2);

%% Area and volume

% Approximation
A1 = pi*r*(2*r + sqrt(r^2+h^2));
V1 = 1/3*pi*r^2*(2*r + h);

% Define integrand
% Integrand is f(t)=y(t)*sqrt(x'(t)^2+y'(t)^2)
y = @(t,b) b*cos(t).*(1+sin(t));
dx = @(t,a) a*cos(t);
dy = @(t,b) -b*(sin(t).^2 + sin(t) - cos(t).^2);
f = @(t,a,b) y(t,b).*sqrt(dx(t,a).^2 + dy(t,b).^2);

A2 = 2*pi*integral(@(t) f(t,a,b),-pi/2,pi/2);
V2 = 8/5*pi*a*b^2;

%% Outer layer mass

% Approximate form
m1tri = sigmaTri*A1;
m1hex = sigmaHex*A1;

% Piriform
m2tri = sigmaTri*A2;
m2hex = sigmaHex*A2;

%% Show results

fprintf('Area density (triangular structure): %.3ekg/m²\n',sigmaTri);
fprintf('Area density (hexagonal structure): %.3ekg/m²\n',sigmaHex);
fprintf('\n');
fprintf('Approx. area: %.3em²\n',A1);
fprintf('Approx. volume: %.3em³\n',V1)
fprintf('Approx. mass (triangular structure): %.3ekg\n',m1tri);
fprintf('Approx. mass (hexagonal structure): %.3ekg\n',m1hex);
fprintf('\n');
fprintf('Piriform area: %.3em²\n',A2);
fprintf('Piriform volume: %.3em³\n',V2)
fprintf('Piriform mass (triangular structure): %.3ekg\n',m2tri);
fprintf('Piriform mass (hexagonal structure): %.3ekg\n',m2hex);



fprintf('\n');