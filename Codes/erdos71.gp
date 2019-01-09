{
s = 0;
for (x1 = 1, 9, for (x2 = 1, 9, for (x3 = 1, 9, for (x4 = 1, 9, for (x5 = 1, 9,
    if (x1 * x2 * x3 * x4 * x5 % 10 == 0, s++);
)))));
p = s / 9^5;
ans = p * 59049;
print(ans);
}
