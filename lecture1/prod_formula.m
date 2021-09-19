function[res] = prod_formula(params)
    % function just realise basic "formula" of products method
    % <params> in format [kernel, multiplier]
    % <res> in format [random_number, res for the next iteration]
    
    prod = params(1) * params(2);
    
    prod_str = num2str(prod);
    num_digits = length(num2str(params(1)));
    prod_digits = length(prod_str);
    
    gen_number = str2num(get_centered(prod_str, num_digits));
    multiplier = str2num(prod_str(prod_digits- num_digits + 1:prod_digits));
    
    res = [gen_number/ 10^num_digits, params(1), multiplier];
    
end