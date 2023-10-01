function output = blur(img, w)
    [rows, cols] = size(img);
    output = uint8(zeros(rows, cols)); % Initialize the output image

    for i = 1:rows
        for j = 1:cols
            % Define the bounds of the submatrix
            row_start = max(1, i - w);
            row_end = min(rows, i + w);
            col_start = max(1, j - w);
            col_end = min(cols, j + w);

            % Extract the submatrix and calculate the mean
            submatrix = img(row_start:row_end, col_start:col_end);
            blurred_value = mean(submatrix(:));

            % Set the corresponding pixel in the output image
            output(i, j) = uint8(blurred_value);
        end
    end
end
