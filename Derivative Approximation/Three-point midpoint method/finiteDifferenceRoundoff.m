%script to show error of using finite difference for derivative
%calculated error = roundoff + truncation = (2^-52*A*10^k) - ((C/6)*10^-2k)
% where f(x0)~A, f'''(x0)~C, h=10^-k
%
%script uses f = exp and x0 = 1 so that C/A~1

h = logspace(-7,-4,800);
absolute = @(x) abs(x);
E = @(x) exp(x);
DI = @(h) derivativeInstability(E,E,0,h);
errE = arrayfun(DI,h);
errEa = arrayfun(absolute,errE);
FDME = @(h) firstDerMidpointError(1,1,h);
theoryErr = arrayfun(FDME,h);
loglog(h,errEa,h,theoryErr);