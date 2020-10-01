/*
f(a, b) = 1 iff gcd(a, b) = 1 and (a + b) mod 2 = 1 =>
S(n) = sum(1 <= a, b <= n, f(a, b))
     = sum(1 <= k <= n and k mod 2 = 1, moebius(k) * g(n \ k))
where g(n) = sum(1 <= a, b <= n and (a + b) mod 2 = 1, 1)
*/


Sbf(n) = {
    my(ret = 0);
    for (a = 1, n, for (b = 1, n,
        if (gcd(a, b) == 1 && (a + b) % 2 == 1, ret++);
    ));
    return(ret);
}


g(n) = {
    my(ret);
    if (n % 2 == 0, ret = n * n / 2, ret = 2 * (n\2) * (n\2 + 1));
    return(ret);
}


S(n) = {
    my(ret = 0);
    forstep (k = 1, n, 2,
        ret += moebius(k) * g(n \ k);
    );
    return(ret);
}


{
N = 10^6;
s = S(N);
print(s);
}
