clc;    clear;

tic;

cnt = zeros(1, 7);
for y = 2000:2399
    for m = 1:12
        str = sprintf('%d-%d-%d', y, m, 15);
        d = weekday(str);
        cnt(d) = cnt(d) + 1;
    end
end
p = [7, 1, 2, 3, 4, 5, 6];
e = cnt/sum(cnt) * p';
fprintf('%d\n', floor(e*1000000));

toc;
