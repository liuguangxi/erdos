/*
According to Lagrange interpolation formula
P(x) = sum(k = 1, N, p_k(x)*s_k)
p_k(x) = prod(1 <= i <= N and i != k, x - i) / prod(1 <= i <= N and i!= k, k - i)
when x = N + d (d >= 1)
P(N + d) = sum(k = 1, N, p_k(N + d)*s_k)
p_k(N + d) = (-1)^(N-k) * (c/(d+N-k)) / ((k-1)!*(N-k)!)
where c = d*(d+1)*...*(d+N-1)
*/


{
N = 10^6; N1 = 100;
P = 1000000007;

s = vector(N);
t = 0;
for (k = 1, N,
    t = (615949 * t + 797807) % 2^20;
    s[k] = t - 2^19;
);

sn = sum(k = 1, N, Mod(s[k], P));
for (d = 1, N1,
    sgn = (-1)^(N-1);
    c = prod(k = 0, N-1, Mod(d + k, P));
    x = prod(k = 1, N-1, Mod(k, P));
    for (k = 1, N,
        p = sgn * c / Mod(d + N - k, P) / x;
        sn += p * Mod(s[k], P);
        sgn = -sgn;
        if (k < N, x *= Mod(k, P) / Mod(N - k, P));
    );
);
ans = lift(sn);
print(ans);
}
