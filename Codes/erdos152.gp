/*
Let f_p(n) = prod(1 <= i <= n && i mod p != 0, i), then
n!/G_p(n) = prod(k >= 0, f_p(n\p^k))
and the period of f_p(n) mod p^e is 2*p^e
7711956 = 2^2 * 3^3 * 7 * 101^2
*/


F(n, p) = {
    my(s, x);
    s = 0; x = p;
    while (x <= n, s += n \ x; x *= p);
    return(s);
}


Q(n) = {
    my(x, r, s4, s27, s7, s10201, s);

    x = 1; s4 = 1;
    while (x <= n, r = (n\x) % (4*2); if (r > 0, s4 *= T4[r]); x *= 2);
    s4 /= Mod(3, 4)^F(n, 3) * Mod(7, 4)^F(n, 7) * Mod(101, 4)^F(n, 101);

    x = 1; s27 = 1;
    while (x <= n, r = (n\x) % (27*2); if (r > 0, s27 *= T27[r]); x *= 3);
    s27 /= Mod(2, 27)^F(n, 2) * Mod(7, 27)^F(n, 7) * Mod(101, 27)^F(n, 101);

    x = 1; s7 = 1;
    while (x <= n, r = (n\x) % (7*2); if (r > 0, s7 *= T7[r]); x *= 7);
    s7 /= Mod(2, 7)^F(n, 2) * Mod(3, 7)^F(n, 3) * Mod(101, 7)^F(n, 101);

    x = 1; s10201 = 1;
    while (x <= n, r = (n\x) % (10201*2); if (r > 0, s10201 *= T10201[r]); x *= 101);
    s10201 /= Mod(2, 10201)^F(n, 2) * Mod(3, 10201)^F(n, 3) * Mod(7, 10201)^F(n, 7);

    s = lift(chinese([s4, s27, s7, s10201]));
    return(s);
}


S(n) = {
    return(sum(i = 1, n, Q(10^16 + i*10^5)));
}


{
/* Init tables */
T4 = vector(4*2); T4[1] = Mod(1, 4);
for (i = 2, 4*2, if (i % 2 == 0, T4[i] = T4[i - 1], T4[i] = T4[i - 1] * Mod(i, 4)));

T27 = vector(27*2); T27[1] = Mod(1, 27);
for (i = 2, 27*2, if (i % 3 == 0, T27[i] = T27[i - 1], T27[i] = T27[i - 1] * Mod(i, 27)));

T7 = vector(7*2);  T7[1] = Mod(1, 7);
for (i = 2, 7*2, if (i % 7 == 0, T7[i] = T7[i - 1], T7[i] = T7[i - 1] * Mod(i, 7)));

T10201 = vector(10201*2);  T10201[1] = Mod(1, 10201);
for (i = 2, 10201*2, if (i % 101 == 0, T10201[i] = T10201[i - 1], T10201[i] = T10201[i - 1] * Mod(i, 10201)));


/* Calculate S(N) */
N = 10^5;
ans = S(N);
print(ans);
}
