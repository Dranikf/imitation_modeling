function[res] = cong_formula(params)

    % funciton reasises the basic formula for a congruent method
    % <params> = [<X>, <lambda>, <mu>, <m>]
    % <res> = [<generared_number>, [<param for next iteration>]]

    X = params(1);
    lambda = params(2);
    mu = params(3);
    m = params(4);

    gen_num = mod(X * lambda + mu, m);
    gen_length = length(num2str(gen_num));
    
    res = [gen_num / 10^(length(num2str(gen_num))), [gen_num, lambda, mu, m]];

end