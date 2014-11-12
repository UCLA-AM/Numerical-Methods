%function to calculate the theoretical absolute error for a function when
% using the finite difference approximation for its derivative
%
%Input: A = lower bound on f, C = lower bound on f''', h = selfexplainatory

function error = firstDerMidpointError(A,C,h)
    h = log(h)/log(10);
    error = (1/6)*10^(2*h) + 10^(-17-h);
return;