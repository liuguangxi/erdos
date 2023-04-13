/*
(1) Calculate Z0(n)
Z0(n) = sum(1<=a<=b<=n, S(a,b))
      = sum(1<=k<=n, phi(k) * sum(1<=a<=b<=n, [k|a and k|b]))
      = sum(1<=k<=n, phi(k) * f(n\k))
where f(n) = n*(n+1)/2
Let Phi(n) = sum(i = 1, n, phi(i)), kmax = floor(sqrt(n)), xmax = n\(kmax+1)
Z0(n) = sum(k = 1, kmax, phi(k) * f(n\k))
      + sum(x = 1, xmax, (Phi(n\x) - Phi(n\(x+1))) * f(x))
and Phi(n) = f(n) - sum(i = 2, n, Phi(n\i))
           = f(n) - sum(k = 2, kmax, Phi(n\k)) - sum(x = 1, xmax, (n\x-n\(x+1))*Phi(x))

(2) Calculate Z1(n)
Using gcd(F(a), F(b)) = F(gcd(a, b)) =>
S(F(a), F(b)) = sum(k | gcd(F(a), F(b)), phi(k)) = sum(k | F(gcd(a, b)), phi(k)) = F(gcd(a, b)) =>
Z1(n) = sum(1<=a<=b<=n, S(F(a),F(b)))
      = sum(1<=a<=b<=n, F(gcd(a,b)))
      = sum(g = 1, n, F(g) * sum(1<=a<=b<=n, [gcd(a, b) = g]))
      = sum(g = 1, n, F(g) * sum(1<=a1<=b1<=n\g, [gcd(a1, b1) = 1]))
      = sum(g = 1, n, F(g) * sum(1<=d<=n\g, mu(d)*f((n\g)\d)))
      = sum(k = 1, n, F(k) * g(n\k))
where g(n) = sum(k = 1, n, mu(k) * f(n\k))
Let M(n) = sum(i = 1, n, mu(i)), kmax = floor(sqrt(n)), xmax = n\(kmax+1)
g(n) = sum(k = 1, kmax, mu(k) * f(n\k)) + sum(x = 1, xmax, (M(n\x)-M(n\(x+1)))*f(x))
and M(n) = n - sum(i = 2, n, M(n\i))
         = n - sum(k = 2, kmax, M(n\k)) - sum(x = 1, xmax, (n\x-n\(x+1))*M(x))
Let Fs(n) = sum(i = 1, n, F(i))
Fs(n) mod p = last element of [1,1,0;1,0,0;1,1,1]^(n-1)*[1,0,1]'
Z1(n) = sum(k = 1, kmax, (F(k) - F(k-1)) * g(n\k))
      + sum(x = 1, xmax, (Fs(n\x) - Fs(n\(x+1))) * g(x))
*/


Z0(n) = {
    my(f(n) = n*(n+1)/2);
    my(nsqrt, smalls, larges, kmax, xmax, sumphi, t, s);

    nsqrt = sqrtint(n);
    smalls = vector(nsqrt);    \\ Phi(i)
    larges = vector(nsqrt);    \\ Phi(n\i)
    for (m = 1, nsqrt,
        kmax = sqrtint(m);
        xmax = m \ (kmax + 1);
        sumphi = f(m);
        sumphi -= sum(k = 2, kmax, smalls[m\k]);
        sumphi -= sum(x = 1, xmax, (m\x-m\(x+1))*smalls[x]);
        smalls[m] = sumphi;
    );
    forstep (m = nsqrt, 1, -1,
        t = n \ m;
        kmax = sqrtint(t);
        xmax = t \ (kmax + 1);
        sumphi = f(t);
        for (k = 2, kmax,
            if (t \ k <= nsqrt, sumphi -= smalls[t \ k], sumphi -= larges[n \ (t \ k)]);
        );
        sumphi -= sum(x = 1, xmax, (t\x-t\(x+1))*smalls[x]);
        larges[m] = sumphi;
    );

    s = f(n) + sum(k = 2, nsqrt, (smalls[k] - smalls[k-1]) * f(n\k));
    xmax = n \ (nsqrt + 1);
    s += sum(x = 1, xmax - 1, (larges[x] - larges[x+1]) * f(x));
    if (n \ (xmax + 1) <= nsqrt,
        s += (larges[xmax] - smalls[n \ (xmax + 1)]) * f(xmax),
        s += (larges[xmax] - larges[xmax + 1]) * f(xmax);
    );

    return(s);
}


Fs(n, p) = {
    my(s);
    s = Mod([1,1,0;1,0,0;1,1,1], p)^(n-1) * Mod([1,0,1]~, p);
    return(s[3]);
}


Z1(n, p) = {
    my(f(n) = n*(n+1)/2);
    my(nsqrt, smalls, larges, kmax, xmax, sumu, t, gs, gl, sumg, m1, m2, s);

    nsqrt = sqrtint(n);
    smalls = vector(nsqrt);    \\ M(i)
    larges = vector(nsqrt);    \\ M(n\i)
    for (m = 1, nsqrt,
        kmax = sqrtint(m);
        xmax = m \ (kmax + 1);
        sumu = 1;
        sumu -= sum(k = 2, kmax, smalls[m\k]);
        sumu -= sum(x = 1, xmax, (m\x-m\(x+1))*smalls[x]);
        smalls[m] = sumu;
    );
    forstep (m = nsqrt, 1, -1,
        t = n \ m;
        kmax = sqrtint(t);
        xmax = t \ (kmax + 1);
        sumu = 1;
        for (k = 2, kmax,
            if (t \ k <= nsqrt, sumu -= smalls[t \ k], sumu -= larges[n \ (t \ k)]);
        );
        sumu -= sum(x = 1, xmax, (t\x-t\(x+1))*smalls[x]);
        larges[m] = sumu;
    );

    gs = vector(nsqrt);    \\ g(i)
    gl = vector(nsqrt);    \\ g(n\i)
    for (m = 1, nsqrt,
        kmax = sqrtint(m);
        xmax = m \ (kmax + 1);
        sumg = f(m);
        sumg += sum(k = 2, kmax, (smalls[k] - smalls[k-1]) * f(m\k));
        sumg += sum(x = 1, xmax, (smalls[m\x] - smalls[m\(x+1)]) * f(x));
        gs[m] = sumg;
    );
    forstep (m = nsqrt, 1, -1,
        t = n \ m;
        kmax = sqrtint(t);
        xmax = t \ (kmax + 1);
        sumg = f(t);
        sumg += sum(k = 2, kmax, (smalls[k] - smalls[k-1]) * f(t\k));
        for (x = 1, xmax,
            if (t \ x <= nsqrt, m1 = smalls[t \ x], m1 = larges[n \ (t \ x)]);
            if (t \ (x+1) <= nsqrt, m2 = smalls[t \ (x+1)], m2 = larges[n \ (t \ (x+1))]);
            sumg += (m1 - m2) * f(x);
        );
        gl[m] = sumg;
    );

    s = Fs(1, p) * Mod(gl[1], p);
    s += sum(k = 2, nsqrt, (Fs(k, p) - Fs(k-1, p)) * Mod(gl[k], p));
    xmax = n \ (nsqrt + 1);
    s += sum(x = 1, xmax, (Fs(n\x, p) - Fs(n\(x+1), p)) * Mod(gs[x], p));
}


{
N = 10^8;
P = 10^9+7;
s = Mod(Z0(N), P)^lift(Z1(N, eulerphi(P)));
ans = lift(s);
print(ans);
}
