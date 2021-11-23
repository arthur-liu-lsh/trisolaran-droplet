function [x,y] = piriform2d(a,b,t)
%PIRIFORM2D Returns output of the 2D Piriform function in parametric form.
%   The 2D Piriform curve's length (along x axis) is 2*a
%   The 2D Piriform curve's height (along y axis) is 3*sqrt(3)/2
%   t is in interval [-pi/2, 3*pi/2[
x = a * (1 + sin(t));
y = b * cos(t) .* (1 + sin(t));
end

