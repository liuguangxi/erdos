/* F(R, C) = binomial(R + C, R) */


{
R = 12345678; C = 87654321;
X = R + C; K = min(R, C);
s = Mod(1, 1000000007);
for (i = 1, K, s = s * (X + 1 - i) / i);
print(lift(s));
}
