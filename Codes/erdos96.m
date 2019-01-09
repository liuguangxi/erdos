clc;    clear;

tic;

R = 16;
s = 1;
for k = 1:ceil(R/2)-1
    s = s + sum(prod(nchoosek(1:R, k), 2));
end
p = s / prod(1:R+1);
ans = floor(1/p);
fprintf('%d\n', ans);

toc;
