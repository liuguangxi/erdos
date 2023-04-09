{
N = 205530;
sg = vector(N);
for (x = 13, N,
    if (x - 13 <= 12, g1 = 0, g1 = sg[x - 13]);
    if (x - 50 <= 12, g2 = 0, g2 = sg[x - 50]);
    if (x - 63 <= 12, g3 = 0, g3 = sg[x - 63]);
    v = Set([g1, g2, g3]);
    y = 0;
    for (i = 1, #v,
        if (v[i] == y, y = v[i] + 1, break);
    );
    sg[x] = y;
);

s = 1; for (x = 1, N, if (sg[x] == 0, s++));
ans = s/(N+1);
printf("%.4f\n", ans);
}
