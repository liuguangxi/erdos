/*
Let f(n) = sum(0 <= i, j <= n, bitxor(i, j))
(1) n = 2^k - 1, f(n) = n*(n+1)^2/2
(2) n = 2^k - 1 + m (0 < m < 2^(k+1))
f(n) = sum(0 <= i, j <= 2^k-1, xor(i, j))
     + sum(0 <= i <= 2^k-1 and 2^k <= j <= n, xor(i, j))
     + sum(2^k <= i <= n and 0 <= j <= n, xor(i, j))
     + sum(2^k <= i <= n and 2^k <= j <= n, xor(i, j))
     = (2^k-1)*(2^k)^2/2 + 2 * (m*(2^k*2^k+(2^k-1)*(2^k)/2)) + f(m - 1)
*/


f(n) = {
    my(k, m);
    if (n <= 0, return(0));
    k = logint(n + 1, 2);
    if (n == 2^k - 1,
        return(n*(n+1)^2/2),
        m = n - (2^k - 1);
        return((2^k-1)*(2^k)^2/2 + 2 * (m*(2^k*2^k+(2^k-1)*(2^k)/2)) + f(m - 1));
    );
}


{
ans = f(1073742824) % 1000000007;
print(ans);
}
