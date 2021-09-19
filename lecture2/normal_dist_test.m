n = 2000;
step = 1;
mu = 1;
sigm = 10; 

gen_x = normrnd(mu,sigm, [1 n]);

low_lim = min(gen_x);
hight_lim = max(gen_x);

x_plot = low_lim:step:hight_lim;

ob_prob = hist(gen_x, x_plot)/n;

bar(x_plot, ob_prob);
hold on
plot(x_plot, normpdf(x_plot, mu, sigm));
