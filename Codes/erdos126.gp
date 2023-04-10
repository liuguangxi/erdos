/*
Calculate n!/10^e mod 10^7, where 10^e || n! <=>
chinese(n!/10^e mod 2^7, n!/10^e mod 5^7)
(1) n!/10^e mod 2^7 = 0
(2) n!/10^e mod 5^7 = (n!/5^e mod 5^7) / (2^e mod 5^7)
Let f(n) = prod(1 <= i <= n and i mod 5 != 0, i), then
n!/5^e mod 5^7 = prod(i = 0, inf, f(n\5^i) mod 5^7) mod 5^7
and f(n) mod 5^7 is of period 2*5^7

G(n) = sum(i = 1, n, sigma2(i))
     = sum(i = 1, n, sum(d | i, d^2))
     = sum(d = 1, n, d^2 * floor(n/d))
Let kmax = floor(sqrt(n)), xmax = n \ (kmax + 1)
s3(n) = n*(n+1)*(2*n+1)/6
G(n) = sum(k = 1, kmax, k^2*(n\k)) + sum(x = 1, xmax, (s3(n\x) - s3(n\(x+1)))*x)
*/


/* last 7 non-zero digit of n! */
fac_last7(n) = {
    my(e, t, vf, s, s5, x, res);

    e = 0; t = 5;
    while (t <= n, e += n \ t; t *= 5);

    vf = vector(2*5^7-1); s = Mod(1, 5^7);
    for (i = 1, 2*5^7-1,
        if (i % 5 != 0, s *= i); vf[i] = s;
    );

    t = 1; s5 = Mod(1, 5^7);
    while (t <= n,
        x = (n \ t) % (2*5^7);
        if (x > 0, s5 *= vf[x]);
        t *= 5;
    );
    s5 /= Mod(2, 5^7)^e;
    res = lift(chinese(Mod(0, 2^7), s5));
    return(res);
}


G(n) = {
    my(s3(n) = n*(n+1)*(2*n+1)/6);
    my(kmax, xmax, s);
    kmax = sqrtint(n); xmax = n \ (kmax + 1);
    s = sum(k = 1, kmax, k^2*(n\k)) + sum(x = 1, xmax, (s3(n\x) - s3(n\(x+1)))*x);
    return(s);
}


{
x = fac_last7(99^99);
ans = G(x^2) % 1000000007;
print(ans);
}
