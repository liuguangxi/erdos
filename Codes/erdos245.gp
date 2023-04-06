{
M = 10^9+7;
N = 4040;
s = 0;
for (m = 1, N\3,
    print("m = ", m);
    Fx = sum(i = m, N-2*m, Mod(binomial(i-1, m-1), M) * x^i) + O(x^(N+1));
    s += polcoef(Fx^3, N);
);
print(lift(s));
}
