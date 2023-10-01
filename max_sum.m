function [summa, index] = max_sum(v, n)
    if n > numel(v)
        summa = 0;
        index = -1;
        return; 
    end
    max_summa = -999;
    max_index = 0;
    for i = 1:(numel(v) - n + 1)        
        current_sum = sum(v(i:i + n - 1));        
        if current_sum > max_summa
            max_summa = current_sum;
            max_index = i;
        end
    end
    summa = max_summa;
    index = max_index;
end
