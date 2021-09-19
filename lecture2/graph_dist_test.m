function [] = graph_dist_test(sample, pdf, pdf_params, nbins)
% its a funciton for plotting theoretical pdf and observated histogramm on
% one plot, for understating what distribution does sample have
% input:
% <sample> - is a observated sample wich will be used for histogramm
% <pdf> - its a probability density function wich will be used for line plot
%       it should waits (X, pdf_params(1), pdf_params(2), ...)
% <nbins> - sets how much interval should be used for histogramm plotting

    params_line = ',';
    
    for i = pdf_params
        params_line = [params_line,num2str(i), ','];
    end
    
    params_line(end) = ')';
    h_lim = max(sample);
    l_lim = min(sample);
    step = (h_lim - l_lim)/nbins;
    
    %plot_x = l_lim:(h_lim - l_lim)/nbins:h_lim;
    plot_x = l_lim + step/2:step:h_lim - step/2;
    pdf_y = eval(['pdf(plot_x', params_line]);
    
    k = numel(sample)* (h_lim - l_lim) / nbins;
    
    freq = hist(sample, plot_x)/k;
    bar(plot_x, freq);
    hold on;
    
    plot(plot_x, pdf_y, 'LineWidth', 4, 'Color', 'Red');

end

