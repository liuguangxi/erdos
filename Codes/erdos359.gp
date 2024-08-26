/*
n >= 2, S(n) = 23^(number of distinct prime factors with form 23k+1 in n)
*/


rec(k, imin, n) = {
    my(nn);
    for (i = imin, Lvp,
        nn = n * Vp[i];
        if (nn > T, break);
        if (k == 7,
            S += T \ nn,
            rec(k + 1, i + 1, nn);
        );
    );
}


{
M = 10^9+7;
T = 10^18;
Vp = List();
for (i = 1, 150, p = 23*i+1; if (isprime(p), listput(Vp, p)));
Vp = Vec(Vp); Lvp = #Vp;
S = 0;
rec(1, 1, 1);
ans = S % M;
print(ans);
}
