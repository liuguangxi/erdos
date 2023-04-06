P(k) = vecmax(factor(k^3+1)[,1]);


{
N = 10^7;
M = 10^9+7;

for (k = 1, 10^7,
    if (k % 10000 == 0, print("k = ", k));
    s += P(k);
);
ans = s % M;
print(ans);
}
