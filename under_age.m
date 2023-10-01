function [too_young] = under_age(age,limit)
if nargin < 2 || isempty(limit)
        limit = 21; % Assign a default value to arg2
end
if age<limit
    too_young=true
else
    too_young=false

end