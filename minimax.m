function [mmr, mmm] = minimax(M)
    dime=size(M);
    % Find the maximum and minimum values in each row
    max_vals = max(M, [], 2);
    min_vals = min(M, [], 2);

    % Calculate the absolute difference between the maximum and minimum values in each row
    mmr = abs(max_vals - min_vals);
    mmr=reshape(mmr,[1,dime(1)]);

    % Calculate the difference between the maximum and minimum values in the entire matrix
    mmm = max(max(M)) - min(min(M));
end