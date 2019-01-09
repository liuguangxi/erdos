/*
A003692    Number of trees on n labeled vertices with degree at most 3
*/


a(n) = {
    if (n <= 2,
        return(1),
        return((n-2)!/2^n * sum(q = 0, n, binomial(n,q)*binomial(2*q,n-2)));
    );
}


{
N = 314159;
M = 1000000007;
s1 = prod(i = 1, N-2, Mod(i, M));
s2 = Mod(2, M)^N;
s = 0;
b1 = Mod(1, M);
qmin = ceil((N-2)/2);
b2 = prod(i = 2*qmin-N+3, 2*qmin, Mod(i, M));
for (q = 0, N,
    \\print(q);
    if (q > 0, b1 = b1 * (N+1-q) / q);
    if (q >= qmin,
        if (q > qmin, b2 = b2 * (2*q) * (2*q-1) / (2*q-N+2) / (2*q-N+1));
        s += b1 * b2 / s1;
    );
);
s *= s1 / s2;
print(lift(s));
}
