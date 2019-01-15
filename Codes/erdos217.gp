{
L = 1000;
f = vector(L);
for (n = 1, L,
    iswin = 0;
    for (k = 1, ceil(n\2),
        if (n - k == 0 || f[n - k] == 0, iswin = 1; break);
    );
    f[n] = iswin;
);
vlose = List();
for (n = 1, L, if(f[n] == 0, listput(vlose, n+1)));

/* n = 2^k, k is positive integer */
N = 10^10^6-1;
ans = floor(log(N)/log(2)) - 1;
print(ans);
}
