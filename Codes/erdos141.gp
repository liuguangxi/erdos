/*
S(n) = sum(1 <= k <= n and gcd(k, n) = 1, exp(i*2*pi*k/n)) = moebius(n)

Let f(x, k) = x^k * mu(x), F(n, k) = sum(i = 1, n, f(i, k))
s = sum(1 <= i <= n and x | i, f(x, k) * (i/x)^k) =>
(1) s = sum(1 <= i <= n and x | i, x^k*mu(x)*i^k/x^k)
      = sum(i = 1, n, i^k, sum(x | i, mu(x)))
      = sum(i = 1, n, i^k * [i = 1])
      = 1
(2) Let m = i/x
    s = sum(m = 1, n, sum(1 <= i <= n and x | i, f(x, k)*m^k * [i/x = m]))
      = sum(m = 1, n, m^k * sum(x = 1, n\m, f(x, k)))
      = sum(i = 1, n, i^k * F(n\i, k))
From (1)(2) get
F(n, k) = 1 - sum(i = 2, n, i^k * F(n\i, k))
        = 1 - sum(i = 2, imax, i^k * F(n\i, k)) - sum(x = 1, xmax, (sk(n\x) - sk(n\(x+1)))*F(x, k))
where imax = floor(sqrt(n)), xmax = n \ (imax + 1), sk(n) = sum(i = 1, n, i^k)
*/


Fref(n, p = 1000000007) = {
    return(lift(sum(i = 1, n, Mod(i, p)^1000 * moebius(i))));
}


F(n, p = 1000000007) = {
    my(nsqrt, s1000_s, s1000_l, f_s, f_l, vs1000, c, sgn, a, t, imax, xmax, s, m1, m2);

    /* Preallocation */
    nsqrt = sqrtint(n);
    s1000_s = vector(nsqrt);    \\ s1000(i)
    s1000_l = vector(nsqrt);    \\ s1000(n\i)
    f_s = vector(nsqrt);    \\ F(i)
    f_l = vector(nsqrt);    \\ F(n\i)

    /* Calculate s1000(n\i) */
    s1000_s[1] = Mod(1, p);
    for (i = 2, nsqrt, s1000_s[i] = s1000_s[i - 1] + Mod(i, p)^1000);
    print("calculate s1000_s done");
    vs1000 = vector(1001);
    sgn = 1; a = prod(j = 1, 1001, Mod(j, p));
    for (j = 1, 1001,
        a *= Mod(j, p) / Mod(1002 - j, p);
        vs1000[j] = s1000_s[j] * sgn / a;
        sgn = -sgn;
    );
    for (x = 1, nsqrt,
        if (n \ x <= 1001, s1000_l[x] = s1000_s[n\x]; next);
        c = prod(j = 0, 1001, Mod(n\x - j, p));
        for (j = 1, 1001, s1000_l[x] += vs1000[j] / Mod(n\x - j, p));
        s1000_l[x] *= c;
    );
    print("calculate s1000_l done");

    /* Calculate F(n\i) */
    f_s[1] = Mod(1, p);
    for (i = 2, nsqrt, f_s[i] = f_s[i - 1] + moebius(i) * Mod(i, p)^1000);
    print("calculate f_s done");
    forstep (m = nsqrt, 1, -1,
        t = n \ m; imax = sqrtint(t); xmax = t \ (imax + 1);
        s = Mod(1, p);
        for (i = 2, imax,
            if (t \ i <= nsqrt,
                s -= (s1000_s[i] - s1000_s[i - 1]) * f_s[t \ i],
                s -= (s1000_s[i] - s1000_s[i - 1]) * f_l[n \ (t \ i)];
            );
        );
        for (x = 1, xmax,
            if (t \ x <= nsqrt, m1 = s1000_s[t \ x], m1 = s1000_l[n \ (t \ x)]);
            if (t \ (x + 1) <= nsqrt, m2 = s1000_s[t \ (x + 1)], m2 = s1000_l[n \ (t \ (x + 1))]);
            s -= (m1 - m2) * f_s[x];
        );
        f_l[m] = s;
    );
    print("calculate f_l done");

    return(lift(f_l[1]));
}


{
N = 10^11;
ans = F(N, 1000000007);
print(ans);
}
