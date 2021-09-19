ob = [107    95   100    95   102];
theor = [100.0000  100.0000  100.0000  100.0000  100.0000];

[sta, theo, p_val] = chi_sq_dist_basic(ob, theor);

test_data = unifrnd(4,7, [1, 500]);
disp('results for uniform distribution')
[sta, theo, p_val] = chi_sq_uni_test(test_data, 5);


disp('results for normal distribution')
test_data = normrnd(5, 6, [1, 500]);
[sta, theo, p_val] = chi_sq_uni_test(test_data, 5);

disp('number generator test')
res_data = number_generator([1357, 1357, 0, 5689], 8000, @cong_formula);
[sta, theo, p_val] = chi_sq_uni_test(res_data, 5)
