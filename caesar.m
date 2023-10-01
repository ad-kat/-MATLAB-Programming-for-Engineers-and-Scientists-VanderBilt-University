function coded = caesar(text, shift)
    % Ensure the shift value is within the range 32-126
    shift = mod(shift, 95);  % 95 is the number of visible ASCII characters

    % Convert the input text to a character array
    text = char(text);

    % Initialize an empty character array to store the result
    coded = '';

    % Iterate through each character in the input text
    for i = 1:length(text)
        % Get the ASCII code of the current character
        char_code = double(text(i));

        % Apply the Caesar cipher shift
        char_code = char_code + shift;

        % Wrap around if the code goes out of the visible ASCII range
        if char_code < 32
            char_code = char_code + 95;
        elseif char_code > 126
            char_code = char_code - 95;
        end

        % Convert the modified code back to a character and append to the result
        coded = [coded, char(char_code)];
    end
end
