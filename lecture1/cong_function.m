function[res] = cong_function(params)

    % funciton reasises the basic formula for a congruent method
    % <params> = [<X>, <m>]
    % <res> = [<generared_number>, [<param for next iteration>]]

    X = params(1);
    m = params(2);

    gen_num = mod(X ^ 2, m);
    res = [gen_num / 10^(length(gen_num)), [gen_num, m]]


end