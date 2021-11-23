function [X,Y] = generatePiriform2d(a,b,N)
%GENERATEPIRIFORM2D Generates a 2D piriform surface of parameters a,b with
%N points
%   The 2D Piriform curve's length (along x axis) is 2*a
%   The 2D Piriform curve's height (along y axis) is 3*sqrt(3)/2
%   N is the number of points generated

T = linspace(-pi/2, 3*pi/2, N)';

[X,Y] = piriform2d(a,b,T);

end

