function qu = expM(x,y)
    %scalar calculation (faster)
    if abs(x/y) < 1e-6
        qu = y * (1 - x/y/2); %catches divide-by-zero errors
    else
        qu = x / (exp(x/y) - 1);
    end
    
    %{
    %vector calculation
    qu = y .* (1 - x./y./2); %catches divide-by-zero errors
    
    redo = abs(x./y) > 1e-6;
    qu(redo) = x(redo) ./ (exp(x(redo)./y) - 1);
    %}