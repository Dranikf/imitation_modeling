function[res] = get_centered(string, count, side)
% funciton gets <count> centeral symbols from <string>
% returns them in string, if input <string> has odd symbols count then sets
% '0' at the strings begining
% in case, needed drop different count of symbols from different sides
% <side> argument will be used
% for example if <string> == '123456' and <count> == 3
% in case <side> == 1 more symbols will droped from the begining, '345'
% will be getted. in any other case, will droped more symbols from the end

    if nargin < 3
        side = 2;
    end

    if mod(length(string),2) ~= 0
        string = ['0', string];
    end
    
    str_len = length(string);
    if str_len < count
        warning(['cant get ', num2str(count), ' symbols, from line with length ', num2str(str_len)])
        warning(['count = ', num2str(str_len)])
        count = str_len
    end
    
    if count < 1
        warning(['caont can not be less then 0, setting count = 1'])
        count = 1
    end

    if side ~= 1
        step = ceil(count / 2);
    else
        step = floor(count / 2);
    end
    
    
    beg = str_len/2 - step + 1;
    res = string(beg:beg+count-1);

end