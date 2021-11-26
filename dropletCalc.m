%% Approximate form parameters
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

% Distance between neutrons
s = 1.684e-15;

%% Area density

% The area density is calculated with the following formula:
% sigma = Z*m/A where :
% - Z is the number of neutrons per cell
% - m is the mass of a neutron
% - A is the area of a cell

% Triangular structure
sigmaTri = (1/2)*m/(sqrt(3)/4*s^2);

% Hexagonal structure
sigmaHex = 2*m/(3*sqrt(3)/2*s^2);

%% Numerical applications

fprintf('Numerical applications:\n');

% sigma = 656;

A1 = pi*r*(2*r + sqrt(r^2+h^2));
V1 = 1/3*pi*r^2*(2*r + h);

fprintf('Approx area: %3.2fm²\nApprox volume: %3.2fm³\n',A1,V1);

% WRONG CALCULATION !!! Need to integrate numerically
% A2 = pi^2*b*(3*b^2+a^2)/a;
% V2 = 8/5*pi*a*b^2;
% 
% fprintf('Piriform area: %3.2fm²\nPiriform volume: %3.2fm³\n',A2,V2);
% m = A2*sigma;

fprintf('\n');