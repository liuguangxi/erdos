prime_cnt(n) = {
    my(nsqrt, smalls, larges, pcnt, q, end, d);
    nsqrt = sqrtint(n);
    smalls = vector(nsqrt, i, i-1);     \\ prime_cnt(i)
    larges = vector(nsqrt, i, n\i-1);   \\ prime_cnt(n\i)
    for (p = 2, nsqrt,
        if (smalls[p-1] == smalls[p], next);
        pcnt = smalls[p-1];
        q = p*p;
        end = min(nsqrt, n\q);
        for (i = 1, end,
            d = i*p;
            if (d <= nsqrt,
                larges[i] -= larges[d] - pcnt,
                larges[i] -= smalls[n\d] - pcnt;
            );
        );
        forstep (i = nsqrt, q, -1,
            smalls[i] -= smalls[i\p] - pcnt;
        );
    );
    return([larges[1], larges[2]]);
}


prime_sum(n) = {
    my(s1(n) = n*(n+1)/2);
    my(nsqrt, smalls, larges, pcnt, q, end, d);
    nsqrt = sqrtint(n);
    smalls = vector(nsqrt, i, s1(i)-1);     \\ prime_sum(i)
    larges = vector(nsqrt, i, s1(n\i)-1);   \\ prime_sum(n\i)
    for (p = 2, nsqrt,
        if (smalls[p-1] == smalls[p], next);
        pcnt = smalls[p-1];
        q = p*p;
        end = min(nsqrt, n\q);
        for (i = 1, end,
            d = i*p;
            if (d <= nsqrt,
                larges[i] -= p * (larges[d] - pcnt),
                larges[i] -= p * (smalls[n\d] - pcnt);
            );
        );
        forstep (i = nsqrt, q, -1,
            smalls[i] -= p * (smalls[i\p] - pcnt);
        );
    );
    return([larges[1], larges[2]]);
}


/*
For integers > 1
P(n) mod n = -1 iff n = 4 or p^i or 2*p^i (p is odd prime and i > 0)
otherwise = 1
*/
F(n) = {
    /* n >= 10 */
    my(pc1, ps1, pc2, ps2, c, s, pmax, x);
    [pc1, pc2] = prime_cnt(n);
    [ps1, ps2] = prime_sum(n);
    c = 1 + (pc1 - 1) + (pc2 - 1);
    s = (4 - 1) + (ps1 - pc1 - 1) + (2*ps2 - pc2 - 3);
    pmax = sqrtint(n);
    forprime (p = 3, pmax,
        x = p^2;
        while (x <= n, c++; s += x - 1; x *= p);
    );
    pmax = sqrtint(n \ 2);
    forprime (p = 3, pmax,
        x = p^2;
        while (x <= n \ 2, c++; s += 2*x - 1; x *= p);
    );
    s += (n - 1) - c;
    printf("F(%d) = %d\n", n, s);
    return(s);
}


{
s = 0;
for (i = 1, 12, s += F(10^i));
ans = s % 1000000007;
print(ans);
}
