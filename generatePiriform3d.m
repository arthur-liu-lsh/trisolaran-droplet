function [X,Y,Z] = generatePiriform3d(a,b,N,M)
%GENERATEPIRIFORM3D Generates a 3D piriform surface of parameters a,b with
%N*M points
%   The 3D Piriform surface's length (along x axis) is 2*a
%   The 3D Piriform surface's  width and height (along y and z axis) is
%       3*sqrt(3)/2
%   N is the number of points for each base curve
%   M is the number of steps in the revolution

T = linspace(-pi/2, pi/2, N)';
theta = linspace(0,2*pi,M);

[X,Y,Z] = piriform3d(a,b,T,theta);

end

