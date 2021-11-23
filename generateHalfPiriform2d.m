function [X,Y] = generateHalfPiriform2d(a,b,N)
%GENERATEHALFPIRIFORM2D Generates a 2D half piriform surface of parameters 
%a,b with N points
%   The 2D Piriform half curve's length (along x axis) is 2*a
%   The 2D Piriform half curve's height (along y axis) is 3*sqrt(3)/4
%   N is the number of points generated

T = linspace(-pi/2, pi/2, N)';

[X,Y] = piriform2d(a,b,T);

end

