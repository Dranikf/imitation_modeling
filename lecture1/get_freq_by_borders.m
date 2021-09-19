function [ob_freq] = get_freq_by_borders(series, borders)
%	function for getting freqes for series accordig to borders
%   input:
%   <series> - vector with values
%   <borders> - vector wich will me used for getting distribution
%   output:
%   <ob_freq> - observed frequencies: ob_freq(1) is count of numbers 
%   <= borders(1), ob_freq(2) for > borders(1) and <= borders(2) and so on
%   ... ob_freq(n) for <= borders(n-1)

    ob_freq = length(series(series <= borders(1)));
    
    for i = 1:length(borders) - 1
        ob_freq(end+1) = length(series(series <= borders(i+1) & series > borders(i)));
    end
    
    ob_freq(end + 1) = length(series(series > borders(end)));

end

