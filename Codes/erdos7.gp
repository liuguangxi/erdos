/*
When 1 < x < 1000000007, sequence x^2^1, x^2^2, ..., x^2^n, ...
is of period 500000002
in one period, the elements if some permutation of set of quadratic residue of
10^9+7 (except 1)
Besides, the summation of set of quadratic residue of prime p (p > 3) mod p = 0
*/


{
M = 1000000007;
s0 = Mod(-1, M) * (10^18 \ 500000002);
r = 10^18 % 500000002;
s = 0;
for (x = 2, 10^7,
    s += s0;
    t = Mod(x, M);
    for (i = 1, r, t = t^2; s += t);
);
ans = lift(s);
print(ans);
}
