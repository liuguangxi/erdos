/*
F(n) = sum(x = 1, n, sum(i = 1, x, g(x \ i)))
     = sum(k = 1, n, g(k) * sum(1 <= i <= x <= n, [x \ i = k]))
     = sum(k = 1, n, g(k) * c(n, k))

c(n, k) = sum(i = 1, n\k, sum(x, k*i, min((k+1)*i-1, n)))
        = (n+1)*(m0-m1) + (k+1)*s1(m1) - k*s1(m0)
where m0 = n\k, m1 = (n+1)\(k+1), s1(n) = n*(n+1)/2
*/


s1(n) = n*(n+1)/2;


c(n, k) = {
    my(m0, m1);
    m0 = n \ k; m1 = (n + 1) \ (k + 1);
    return((n+1)*(m0-m1) + (k+1)*s1(m1) - k*s1(m0));
}


g(n) = Mod(2, 1000000007)^(2*n^3 % 1000000006) - 1;


F(n) = sum(k = 1, n, g(k) * c(n, k));


{
N = 12345678;
ans = lift(F(N));
print(ans);
}
