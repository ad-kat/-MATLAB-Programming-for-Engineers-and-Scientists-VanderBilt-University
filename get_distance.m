function distance = get_distance(city1, city2)
    persistent data
    if isempty(data)
        [~,~,data] = readxlsx('Distances.xlsx');
    end
    cities = data(1, 2:end);
    idx1 = find(strcmp(cities, city1));
    idx2 = find(strcmp(cities, city2));
    if ~isempty(idx1) && ~isempty(idx2)
        distance = data{idx1+1, idx2+1};
    else
        distance = -1;
    end
end

