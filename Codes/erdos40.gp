/*
F(n) = 4*(n+1)*(n+2)/(3*n) =>
G(n) = sqrt(F(n) - (n-1)^2/n^2*F(n-1) + 1/n^2)
     = sqrt((4*n^2 + 4*n + 1)/n^2)
     = (2*n+1)/n = 2 + 1/n
=> 1/(G(1000000000) - 2) = 1000000000

Z(n) = sum(i = 1, n, sigma(i) - i)
     = sum(i = 1, n, sigma(i)) - sum(i = 1, n, i)
     = sum(d = 1, n, d*floor(n/d)) - n*(n+1)/2
*/


s1(n) = n*(n+1)/2;


{
N = 1000000000;
s = 0;
for (d = 1, sqrtint(N),
    s += d * (N \ d);
);
xmax = N \ (sqrtint(N) + 1);
for (x = 1, xmax,
    s += (s1(N \ x) - s1(N \ (x + 1))) * x;
);
s -= s1(N);
print(s);
}
