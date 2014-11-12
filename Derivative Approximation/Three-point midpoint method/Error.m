%function that returns either the absolute (type = 'a') or relative
% (type = 'r') error
%
%input: exact = exact value, approx = approximate value, type explained
% above

function err = Error(exact, approx, type)

err = 0;
if type == 'a'
    err = approx - exact;
elseif type == 'r'
    err = (approx - exact)/exact;
else
    err = 0;
end
 
return
