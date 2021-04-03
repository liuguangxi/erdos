/*
S = sum(j = 0, p, binomial(p, j)*binomial(p+j, j)*3^j)
*/


{
P = 10^9+7;
S = Mod(1, P^2);
t1 = t2 = t3 = Mod(1, P^2);
for (j = 1, P,
    if (j % 10^6 == 0, print("j = ", j));
    if (j < P, t1 *= (P + 1 - j) / j, t1 = 1);
    t2 *= (P + j) / j;
    t3 *= 3;
    S += t1 * t2 * t3;
);
print(lift(S));    \\ 789430631526014389
}
