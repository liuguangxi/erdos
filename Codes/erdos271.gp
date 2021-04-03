/*
g(n, k) = sum(z1*z2*...*zn, 1<=z1,z2,...,zn<=k and gcd(z1,z2,...,zn)=1)
va(i) = sum(z1*z2*...*zn, 1<=z1,z2,...,zn<=k and i|gcd(z1,z2,...,zn))
vb(i) = sum(z1*z2*...*zn, 1<=z1,z2,...,zn<=k and gcd(z1,z2,...,zn)=i)
time complex is O(k*(log(k)+log(n)))
*/
g(n, k) = {
    my(va, vb, t);
    va = vector(k); vb = vector(k);
    for (i = 1, k,
        t = k\i;
        va[i] = Mod(i,M)^n * Mod(t*(t+1)/2,M)^n;
        vb[i] = va[i];
    );
    forstep (i = k, 1, -1,
        t = k\i;
        for (j = 2, t, vb[i] -= vb[i * j]);
    );
    return(vb[1]);
}


{
M = 10^9+7;
N = 31415;
K = 10^6;
s = 0;
for (m = 1, K,
    if ((m <= 200) || (m > 200 && m % 10000 == 0), print("m = ", m));
    s += Mod(2, M)^m * Mod(m, M)^N * g(N, K\m);
);
print(lift(s));
}
