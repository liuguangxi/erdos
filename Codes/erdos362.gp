{
M = 10^9+7;
N = 182721378;
s = 1;
f1 = 1;
for (i = 2, N,
    if (i % 10^6 == 0, print("i = ", i));
    f2 = (f1 + 2) % i; if (f2 == 0, f2 = i);
    s += f2;
    f1 = f2;
);
ans = s % M;
print(ans);    \\ 604988641
}
