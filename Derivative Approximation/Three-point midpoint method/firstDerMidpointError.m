%function to calculate the theoretical absolute error for a function when
% using the finite difference approximation for its derivative
%
%Input: A = lower bound on f, C = lower bound on f''', h = selfexplainatory

function error = firstDerMidpointError(A,B,h)
    p = log(A)/log(10);
    n = log(B)/log(10);
    l = log(h)/log(10);
    error = (1/6)*10^(n+2*l) + 10^(-17+p-l);
return;