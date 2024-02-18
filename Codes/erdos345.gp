/*
n0 = 1500*30; n1 = n2 = ... = n30 = 50000
F(x) = prod(i = 0, 30, sum(j = 0, nj, binomial(nj, j) * x^(j*2^i)))
s = [x^N]F(x)
*/


{
N = 474288;
M = 1000000007;

n0 = 1500*30; nn = 50000;

vx = Mod(vector(N + 1), M); vx[0 + 1] = Mod(1, M);
t = Mod(1, M);
for (j = 1, n0,
    t *= Mod(n0 + 1 - j, M) / Mod(j, M);
    vx[j + 1] = t;
);
Fx = Polrev(vx) + O(x^(N+1));

for (i = 1, 30,
    print("i = ", i);
    pow2i = 2^i;
    if (pow2i > N, break);
    vx = Mod(vector(N + 1), M); vx[0 + 1] = Mod(1, M);
    t = Mod(1, M);
    for (j = 1, nn,
        if (j * pow2i > N, break);
        t *= Mod(nn + 1 - j, M) / Mod(j, M);
        vx[j * pow2i + 1] = t;
    );
    Fxi = Polrev(vx) + O(x^(N+1));
    Fx *= Fxi;
);

s = polcoef(Fx, N);
ans = lift(s);
print(ans);
}
