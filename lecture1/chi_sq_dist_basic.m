function [chi_sq_stat, theory_stat, p_val] = chi_sq_dist_basic(ob_freq, th_freq, l, alpha)
    %   low level function for the test for equality of distributions
    %   inputs:
    %   <ob_freq> - observed frequencies
    %   <th_freq> - theory frequencies
    %   <l> - number of computed parameters of distribution
    %   <alpha> - critical probability, 0.05 by default
    %   outputs:
    %   <chi_sq_stat> - value of chi-square statistics
    %   <theory_stat> - theory value of chi-square distribution
    %   <p_val> - p-value for test
    
    if nargin < 4
        alpha = 0.05;
    end
    
    v = numel(ob_freq) - l - 1;
    
    chi_sq_stat = sum(((ob_freq - th_freq).^2) ./ th_freq);
    theory_stat = chi2inv(1 - alpha, v);
    p_val = chi2pdf(chi_sq_stat, v);
    
end

