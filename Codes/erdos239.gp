/*
n = p1^e1 * p2^e2 * ... * pk^ek =>
f(n) = prod(i = 1, k, (e1+1)*(e1+2)/2)
*/


g(x) = (x+1)*(x+2)/2;


{
N = 2019;
P = 10^9 + 7;
v = vector(N);
s = Mod(1, P); t = Mod(1, P);
for (i = 2, N,
    fa = factor(i);
    vp = fa[,1]~; ve = fa[,2]~;
    for (k = 1, #vp,
        t /= Mod(g(v[vp[k]]), P);
        v[vp[k]] += ve[k];
        t *= Mod(g(v[vp[k]]), P);
    );
    s += t;
);
print(lift(s));
}
