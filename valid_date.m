function [valid] = valid_date(year,month,day)
if nargin<3
    year=0
    month=0
    day=0
elseif (~isscalar(year)||year<1||year~=fix(year))||(~isscalar(month)||month<1||month~=fix(month))||(~isscalar(day)||day<1||day~=fix(day))
    valid=false
    month=0
    day=0
end
valid = false
flag=0
if month>=1 && month<=12 && day<=31 && day>=1
    if month==1||month==3||month==5||month==7||month==8||month==10||month==12
        valid=true
    end
    if month==4||month==6||month==9||month==11
        if day<=30
            valid=true
        end
    end
    if month==2
        if mod(year, 4) == 0
            if mod(year, 100) == 0
                if mod(year, 400) == 0
                    flag =1;  % Divisible by 400 => Leap year
                else
                    flag = 0; % Divisible by 100 but not 400 => Not a leap year
                end
            else
                flag = 1;  
            end
        end
        if flag==0 && day<=28
            valid=true
        elseif flag==1 && day<=29
            valid=true
        end
    end
end
end










       
   
