/*
Let S(n, k) = sum(i = 1, n, i^k), which is a polynomial of degree k+1
Let f(n) = S(k, n), with f(0) = 0, f(1), ..., f(k), f(k+1) precomputed
According to Lagrange interpolation formula
S(n, k) = sum(i = 0, k+1, prod(0<=j<=k+1 and j!=i, n - j) / prod(0<=j<=k+1 and j!=i, i-j) * f(i))
        = prod(j = 0, k+1, n-j) * sum(i = 1, k+1, f(i)/(n-i) * (-1)^(k+1-i) / (i! * (k+1-i)!))
Let a(i) = i! * (k+1-i)!, then
a(0) = (k+1)!, for i >= 1, a(i) = a(i-1) * i/(k+2-i)
*/

S(n, k, p = 10^9+7) = {
    my(vf, c, s, sgn, a);
    vf = vector(k + 1); vf[1] = Mod(1, p);
    for (i = 2, k + 1, vf[i] = vf[i - 1] + Mod(i, p)^k);
    if (n <= k + 1, return(lift(vf[n])));
    c = prod(j = 0, k + 1, Mod(n - j, p));
    sgn = (-1)^k;
    a = prod(j = 1, k + 1, Mod(j, p));
    s = 0;
    for (i = 1, k + 1,
        a *= Mod(i, p) / Mod(k + 2 - i, p);
        s += vf[i] / Mod(n - i, p) * sgn  / a;
        sgn = -sgn;
    );
    s = c * s;
    return(lift(s));
}


{
ans = S(10^9, 10^6, 10^9+7);
print(ans);
}
