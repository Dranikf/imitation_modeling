function [ chi_sq_stat, theory_stat, p_val ] = chi_sq_uni_test( series, l, count)
%   function testing to uniform distribution
%   inputs:
%   <series> - series which needs to be tested
%   <count> - count of intervals for which series will
%   <l> - number of computed parameters of distribution
%   outputs:
%   <chi_sq_stat> - value of chi-square statistics
%   <theory_stat> - theory value of chi-square distribution
%   <p_val> - p-value for test

    AmB = range(series);
    borders = min(series):(AmB/count):max(series);
    
    ob_freq = get_freq_by_borders(series, borders);
    ob_freq(2) = ob_freq(2) + ob_freq(1);
    ob_freq = ob_freq(2:end-1);
    p = (borders(2:end) - borders(1:end-1))./AmB;
    th_freq = p*numel(series);
    
    
    [ chi_sq_stat, theory_stat, p_val ] = chi_sq_dist_basic(ob_freq, th_freq, l, 0.05);

end

