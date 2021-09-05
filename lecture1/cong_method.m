function[line] = cong_method(lambda, m, interations)
    line = []
    for iter = 1:interations
        lambda = cong_function(lambda, m)
        line = [line, lambda]
    end

end