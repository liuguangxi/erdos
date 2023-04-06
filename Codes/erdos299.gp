{
N = 1000;

a = vector(N);
a[1] = 2;
for (i = 2, N, a[i] = lift(Mod(a[i - 1], 100003)^a[i - 1]));

vpre = [1, 1];    \\ v[2]
for (n = 3, N,
    v = vector(n, i, if (i == 1 || i == n, 1, 2));
    v[1] += (n - 1) * vpre[1];
    for (i = 2, n - 1,
        v[i] += (i - 1) * vpre[i - 1] + (n - i) * vpre[i];
    );
    v[n] += (n - 1) * vpre[n - 1];
    v /= n - 1.;
    vpre = v;
);

s = sum(i = 1, N, a[i] * v[i]);
print(floor(s));
}
