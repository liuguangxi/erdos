{
/* http://oeis.org/A000934 */
m = [7, 8, 9, 10, 11, 12, 12, 13, 13, 14, 15, 15, 16, 16, 16];

/* http://oeis.org/A000125 */
x = vector(15, n, n^3/6+5/6*n+1);

f = vector(15);
for (n = 2, 15,
    for (k = 0, x[n],
        if (isprime(x[n]-k) && isprime(x[n]+k),
            f[n] = k; break;
        );
    );
);
ans = sum(n = 2, 15, (m[n]*f[n])^n);
print(ans);
}
