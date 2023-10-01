function summa = halfsum(mat)
s=size(mat);
summa=0;
for i=1:1:s(1)
    for j= 1:1:s(2)
        if j>=i
            summa=summa+mat(i,j);
        end
    end
end
end