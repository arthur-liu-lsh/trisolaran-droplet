function [x,y,z] = piriform3d(a,b,t,theta)
%PIRIFORM3D Returns output of 3D Piriform function in parametric form.
%   The 3D Piriform surface's length (along x axis) is 2*a
%   The 3D Piriform surface's  width and height (along y and z axis) is
%   3*sqrt(3)/2
%   t is in interval [-pi/2, pi/2[
%   theta is in interval [0, 2*pi[
x = repmat(a * (1 + sin(t)), size(theta));
y = b * cos(t) .* (1 + sin(t)) .* cos(theta);
z = b * cos(t) .* (1 + sin(t)) .* sin(theta);
end

