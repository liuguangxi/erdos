{
N = 50; M = 1000;
P = 10^9 + 7;
f = Mod(1, P);
for (i = 1, N,
    fi = sum(k = 0, i, x^k/Mod(k!, P));
    f *= fi;
);
s = polcoeff(f, M) * Mod(M!, P);
print(lift(s));
}
