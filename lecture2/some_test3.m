n = 2000;
mu = 3;
step = 2;

%a = unifrnd(0,1, [1,n])
%y = (-1/3)*log(a)

gen_x = exprnd(mu, [1,n])

t_mean = mu
t_var = mu^2

ob_mean = mean(gen_x)
ob_var = var(gen_x)


low_lim = min(gen_x);
hight_lim = max(gen_x);
x_plot = low_lim:step:hight_lim;

k = n*(hight_lim - low_lim)/numel(x_plot);

freq = hist(gen_x, x_plot)/k;
bar(x_plot, freq);

hold on

y_exp = exppdf(x_plot, 3);

plot(x_plot, y_exp, 'LineWidth', 5);