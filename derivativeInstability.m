%function that returns the exact error (errE) and the relative error (errR)
% for the finite difference approximation to the derivative
%Input: f = function, fD = derivative of f, x0 = point where you wish to
% find the derivative, h = value used in approximation

function [errE,errR] = derivativeInstability(f, fD, x0, h)

exactD = fD(x0);
approxD = (f(x0+h)-f(x0-h))/(2*h);

errE = Error(exactD,approxD,'e');
errR = Error(exactD,approxD,'r');

return;