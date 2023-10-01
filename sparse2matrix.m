function matrix = sparse2matrix(cellvec)
    % Extract size and default value information
    size_vec = cellvec{1};
    num_rows = size_vec(1);
    num_cols = size_vec(2);
    default_value = cellvec{2};

    % Initialize the matrix with default values
    matrix = ones(num_rows, num_cols) * default_value;

    % Iterate through the cell vector to update non-default values
    for i = 3:length(cellvec)
        element = cellvec{i};
        row_index = element(1);
        col_index = element(2);
        value = element(3);

        % Update the matrix with the non-default value
        matrix(row_index, col_index) = value;
    end
end
