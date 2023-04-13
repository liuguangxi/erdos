{
xmax = 1000;
for (x = -12, xmax,
    p = (x + 8) * (x + 10) * (x + 12);
    if (isprime(p), ans = p; break);
);
print(ans);
}
