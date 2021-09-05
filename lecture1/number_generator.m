function[res] = number_generator(beg_params, iterations, fun)

    % funciton for random number generations
    %  at first iteration <beg_param> will be used as parametr for <fun>
    %  at others as prametr will be used second element of returned list
    % <iterations> sets whow much numbers needed to be generated
    % <fun> - sets funciton wich will be used for generation
    % waiting that <fun> returns [<generated number>, <list with arguments for the next iteration>]
    % wich does not changes from iteration to iteration, this paramets sets this number

    res = [];
    curr_n = beg_params;

    for iter = 1:iterations
        
        curr_n = fun(curr_n);

        new_num = curr_n(1);
        curr_n = curr_n(2:length(curr_n));

        res = [res, new_num];

    end
end