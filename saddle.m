function indices = saddle(M)
    indices = [];
    
    % Get the dimensions of the matrix
    [rows, cols] = size(M);
    
    for i = 1:rows
        for j = 1:cols
            % Check if the current element is greater than or equal to
            % every element in its row and less than or equal to every
            % element in its column
            if all(M(i, :) <= M(i, j)) && all(M(:, j) >= M(i, j))
                % Add the indices of the saddle point to the result
                indices = [indices; i, j];
            end
        end
    end
end
