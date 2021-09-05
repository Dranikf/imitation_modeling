function[res] = square_formula(num)
    % funciton just realise basic "formula" of sqare method
    % <res> in format [<result>, <<num> for the next iterations>]

    sq = num^2;

    num_str = num2str(num);
    sq_str = num2str(sq);

    nex_iter = str2num(get_centered(sq_str, length(num_str)));
    res = [ nex_iter / 10^(length(num2str(nex_iter))), nex_iter];

end