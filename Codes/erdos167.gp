/*
n = 2^k*3*p, k > 0, p is prime > 3
=> sigma(n) = (2^(k+1)-1)*2^2*(p+1), 3*n = 2^k*3^2*p
sigma(n) = 3*n => p | (2^(k+1)-1)*2^2*(p+1) => p | (2^(k+1)-1)
*/


{
s = 0;
N = 10^9;
kmax = logint(N\9, 2);
for (k = 2, kmax,
    fordiv (2^(k+1)-1, p,
        n = 2^k*3*p;
        if (n >= N, break);
        if (isprime(p) && sigma(n) == 3*n, s += n);
    );
);
ans = s % 1000000007;
print(ans);
}
