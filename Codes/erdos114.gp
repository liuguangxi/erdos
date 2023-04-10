/*
D(N) = N! * sum(i = 0, N, (-1)^i / i!)
     = sum(i = 0, N, (-1)^i * N!/i!)
for small number p, only last few items are nonzero
*/


dmodp(n, p) = {
    my(s = 0, x);
    forstep (i = n, 2, -1,
        if (i == n,
            x = Mod((-1)^i, p),
            x *= Mod(-(i+1), p);
        );
        if (x == 0, break, s += x);
    );
    return(s);
}


{
N = 49770435560715869;
P = 223092870;
fa = factor(P)[,1]~;
v = vector(#fa, i, dmodp(N, fa[i]));
ans = lift(chinese(v));
print(ans);
}
