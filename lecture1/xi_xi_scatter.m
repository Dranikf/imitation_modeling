function [] = xi_xi_scatter( series )
    %  function for building scatter plot x(i) by x(i+1) i = 1,3,5,...
    %  <series> - vector of random numbers 
    
    a = [];
    b = [];
    
    for i = 1:numel(series)
        if mod(i,2) == 0
            b = [b,series(i)];
        else
            a = [a,series(i)];
        end
    end
    
    scatter(a,b);
end

