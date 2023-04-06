/*
length(seq) = N (N >= 2)
find vector c of length K (k >= 1) s.t.
seq(n) = sum(i = 1, K, c(i) * seq(n - i)), for K < n <= N
*/
find_linear_recurrence(seq) = {
    my(N, d, m, cs, bs, inv_bef, dif, cs_dup, r);
    N = #seq;
    if (N < 2, print("Input sequence too short"); return);

    d = 0; m = 0;
    cs = bs = vector(N + 1); cs[1] = bs[1] = seq[1]^0;
    inv_bef = seq[1]^0;
    for (i = 0, N - 1,
        m++;
        dif = seq[i + 1] + sum(j = 1, d, cs[j + 1] * seq[i - j + 1]);
        if (dif != 0,
            cs_dup = cs; r = dif * inv_bef;
            for (j = m, N - 1, cs[j + 1] -= r * bs[j - m + 1]);
            if (2 * d <= i,
                d = i + 1 - d; m = 0; bs = cs_dup; inv_bef = 1 / dif;
            );
        );
    );
    if (d >= ceil(N / 2), print("Warning: result may be WRONG"));
    return(-cs[2..d+1]);
}


/*
length(c) = length(seq) = K (K >= 1)
seq(n) = sum(i = 1, K, c(i) * seq(n - i)), for n > K
find seq(n), for n >= 1
*/
linear_recurrence(c, seq, n) = {
    my(K, Ks, fx, gx, cn, ret);
    K = #c; Ks = #seq;
    if (K == 0 || K != Ks || n <= 0, print("Input error"); return);

    fx = Pol(concat(-c[1]^0, c), 'x);
    gx = Mod('x, fx)^(n - 1);
    cn = Vec(lift(gx)); K = #cn;
    ret = sum(i = 1, K, cn[i] * seq[K + 1 - i]);
    return(ret);
}


{
N = 123456789;
s = Mod([1, 1, 1, 1, 2, 4, 10, 25, 55, 121, 242, 484, 946, 1849, 3655, 7225, 14450, 28900, 57970], 1000000007);
c = find_linear_recurrence(s);
res = linear_recurrence(c, s[1..#c], N);
print(lift(res));
}
