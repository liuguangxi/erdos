{
v = List();
for (L = 1, 9, for (OO = 0, 9, for (A = 1, 9, for (K = 0, 9,
    LOL = L * 101 + OO * 10;
    AKA = A * 101 + K * 10;
    if (AKA >= LOL, next);
    d = LOL / gcd(AKA, LOL);
    if (gcd(10, d) == 1 && znorder(Mod(10, d)) == 4,
        t = floor(AKA/LOL*10^4);
        dt = digits(t); if (t < 1000, dt = concat(dt, 0));
        vd = concat([L, OO, A, K], dt);
        if (#Set(vd) == 8,
            printf("%d/%d\n", AKA, LOL);
            listput(v, AKA/LOL);
        );
    );
))));
v = Vec(v);
S = vecsum(v);
p = numerator(S);
q = denominator(S);
ans = p * q;
print(ans);
}
