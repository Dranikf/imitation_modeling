y = chi2rnd(1, [1,5000]);
x = 0:0.01:8;

subplot(1,2,1)
plot(x, chi2pdf(x,1), 'black');
ylim([0 1])
hold on

plot(x, chi2pdf(x,2), 'blue');
plot(x, chi2pdf(x,3), 'green')
plot(x, chi2pdf(x,4), 'red')
plot(x, chi2pdf(x,5), 'magenta')

legend('k=1', 'k=2', 'k=3', 'k=4', 'k=5')

subplot(1,2,2)

plot(x, chi2cdf(x, 1), 'black')
hold on

plot(x, chi2cdf(x,2), 'blue');
plot(x, chi2cdf(x,3), 'green')
plot(x, chi2cdf(x,4), 'red')
plot(x, chi2cdf(x,5), 'magenta')
legend('k=1', 'k=2', 'k=3', 'k=4', 'k=5')
