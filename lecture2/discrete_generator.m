function [ output_args ] = discrete_generator( x, prob )

    intervals = prob(1);
    
    s = cumsum(prob)
    getted_number = unifrnd(0,1)
    k=min(find(s>getted_number))
    output_args = x(k)
    
end

