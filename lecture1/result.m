%% �����

%% ������� 4
% ��� ��������������� ����������� ������� ������������������
% ��� �������� ���� �� ������� �� ������������� �������������
%

%% ����������

%%
% 
%  ��� ������� ������ ���� �������� ��������� �������
%  1. ������� ������� ��� ���������� �����
%   ��������� ����������� �������, ������������� �������, � �������
%   ���������� (�� ��������� 0,05)
%   
%   � ���������� ����� �������� ��������� ����������, ��������
%   �������� ������� ����������� ��� ������������� �����������,
%   
% 

%%
%
%   function [chi_sq_stat, theory_stat, p_val] = chi_sq__dist_basic(ob_freq, th_freq, alpha)
%     
%   if nargin < 3
%       alpha = 0.05;
%   end
%     
%   v = numel(ob_freq) - 1;
%     
%   chi_sq_stat = sum(((ob_freq - th_freq).^2) ./ th_freq);
%   theory_stat = chi2inv(1 - alpha, v);
%   p_val = chi2pdf(chi_sq_stat, v);
%     
%   end

%%
%
% �������� ����� ������ ��� �������� �� ��������������� �����
% � ������������� �����.
%

%%
% 
ob_freq = [38 34 40 36 42]
th_freq = ones(1,5) * 38
[sta, theo] = chi_sq_dist_basic(ob_freq, th_freq)

%%
%
% 2. ����� ������������� ������� ��� ���������� ����� �� �������������
% �������������.
% ��������� �������� ������ ��� ������� ���� �������� ����
% � ���������� ���������� �� ������� ���� ������� ����������� �������
% ��������� ���������� ���������� ���������� �������
%

%%
%
%   function [ chi_sq_stat, theory_stat, p_val ] = chi_sq_uni_test( series, count)
%   AmB = range(series);
%   borders = min(series):(AmB/count):max(series);
%     
%   ob_freq = get_freq_by_borders(series, borders);
%   ob_freq(2) = ob_freq(2) + ob_freq(1);
%   ob_freq = ob_freq(2:end-1);
%   p = (borders(2:end) - borders(1:end-1))./AmB;
%   th_freq = p*numel(series);
%     
%     
%   [ chi_sq_stat, theory_stat, p_val ] = chi_sq_dist_basic(ob_freq, th_freq, 0.05);
% 
%   end
%
%
%
% ������� ������������� �����������������

% �������� ����������� ������� � ���� ��� ���
test_data = unifrnd(4,7, [1, 500]);
disp('results for uniform distribution')
[sta, theo] = chi_sq_uni_test(test_data, 5)

% �������� ����������� ������� � ���� ��� ���
disp('results for normal distribution')
test_data = normrnd(5, 6, [1, 500]);
[sta, theo] = chi_sq_uni_test(test_data, 5)

%% ���������

% �������� ������� ����������� ����������������� �������
res_data = number_generator([1357, 1357, 0, 5689], 8000, @cong_formula);
res_data(1:5)

%%
% ��������� ������ ��� � ������� �� �������������� ������.
% ���������� �������� � ��� ��������� ��������, ��� ������ ����� �����.
% �������� �� ���������� ������� ����.

[sta, theo] = chi_sq_uni_test(res_data, 5)

%%
%
% sta > theo - ������� � ��� ��� ������� ���������� ������� �������� �
% ������ ������.
% ��� ����� ������� �� ����������� ������.

hist(res_data)


%% ������� 5
%
% ��������� ������� unifrnd.

%% �������
%
% ������� ����� ���� �������� � �������� ���������� ����������� �������,
% �������� ������ ��� �������.
%

uni_data = unifrnd(0,50, [1, 10000]);
[sta, theo] = chi_sq_uni_test(uni_data, 20)

%
% ��� ��� sta < theo, ��� ��������� ��������� ������� ��������.
% �� �� ���������� �� �����������.

hist(uni_data, 20)
