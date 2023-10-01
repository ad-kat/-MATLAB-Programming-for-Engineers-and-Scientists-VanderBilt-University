function charnum = char_counter(fname, character)
    % Initialize the character count
    charnum = 0;

    % Check if the character is a valid character
    if ischar(character) && numel(character) == 1
        % Attempt to open the file
        try
            % Read the content of the file
            fileID = fopen(fname, 'r');
            if fileID == -1
                charnum = -1; % File not found
                return;
            end

            % Read the file character by character
            while true
                nextChar = fgetl(fileID);
                if nextChar == -1
                    break; % End of file
                end
                charnum = charnum + sum(nextChar == character);
            end

            % Close the file
            fclose(fileID);
        catch
            charnum = -1; % An error occurred
        end
    else
        charnum = -1; % Invalid character
    end
end
