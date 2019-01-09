clc;    clear;

tic;

c = nchoosek(0:50, 5);
s = sort(sum(2.^c, 2));
ans = mod(s(2131646), 10^9+7);
fprintf('%d\n', ans);

toc;
