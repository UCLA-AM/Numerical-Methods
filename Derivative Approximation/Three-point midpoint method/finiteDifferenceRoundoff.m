%script to show error of using finite difference for derivative
%calculated error = roundoff + truncation = 10^(-17+p-l) + (1/6)*10^(n+2l)
% where f~10^p, h~10^l, f'~10^m, f'''~10^n
% Calculated l for minimum error: l = log(3)/3 - 17/3
%
%script uses f = exp and x0 = 0 so that p=m=n=0

h = logspace(-7,-4,800);
absolute = @(x) abs(x);
E = @(x) exp(x);
DI = @(l) derivativeInstability(E,E,0,l);
errE = arrayfun(DI,h);
errEa = arrayfun(absolute,errE);
FDME = @(l) firstDerMidpointError(1,1,l);
theoryErr = arrayfun(FDME,h);
loglog(h,errEa,h,theoryErr);
