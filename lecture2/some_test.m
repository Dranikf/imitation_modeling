observation = [13, 15, 24, 25, 12, 11];
theory_series = [13.14, 16.67, 22.58, 21.83, 15.03, 10.75];
% учти что l - количесво неизвестных параметров распределения в данном
% примере 2
[chi_sq, theory_stat] = chi_sq_dist_basic(observation, theory_series, 0.05, 2)

% пример для распределения пуассона
observation = [ 7 25 33 20 10 5];
theory = [11.1 24.4 26.8 19.7 10.8 7.2];
[chi_sq, theory_stat] = chi_sq_dist_basic(observation, theory, 0.05, 0)

x = [3 11 24]
prob = [0.25 0.16 0.59]
res = []
for i = 1:20
    res(end + 1) = discrete_generator(x, prob)
end


x = [2 10 18 22]
prob = [0.2 0.35 0.15 0.3]
res = []
for i = 1:500
    res(end + 1) = discrete_generator(x, prob)
end

my_mean = mean(res)
my_dis = var(res)

t_mean = sum(x.*prob)
t_dis = sum((x.^2).*prob) - t_mean^2


subplot(1,2,1)
bar(x, prob)
subplot(1,2,2)
bar(x, hist(res,x)/500)