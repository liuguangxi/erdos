{
for (x = 100000, 166666,
    x6 = 6 * x;
    if (x\1000 + x%1000*1000 == x6, d = x);
);
s = sumdigits(d);
ans = s! % 1000000007;
print(ans);
}
