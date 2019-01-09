/*
DP: f(x) =
1 when x is perfect cube;
min_{1<=i<=(x/2)^(1/3)} {1+f(x-i^3)} otherwise
*/


default(parisize, 10^7);

{
N = 10^6;
s = 0;
f = vector(N);
for (x = 1, N,
    if (sqrtnint(x, 3)^3 == x, f[x] = 1,
        t = x;
        for (i = 1, sqrtnint(x \ 2, 3),
            c = 1 + f[x - i^3];
            if (c < t, t = c);
        );
        f[x] = t;
    );
);
s = vecsum(f);
print(s);
}
