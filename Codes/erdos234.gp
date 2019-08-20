{
N = 2019;
e = 0;
for (i = 1, N - 1, for (j = i + 1, N,
    e += gcd(i, j);
));
x = e / binomial(N, 2);
s = floor(x * 1000);
print(s);
}
