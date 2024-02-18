bino(n, m) = {
    my(s = Mod(1, M));
    for (i = 1, m,
        s *= Mod(n + 1 - i, M) / Mod(i, M);
    );
    return(s);
}


{
J = 26; N = 123456;
M = 1000000007;
n2 = (N - J) / 2; n1 = N - n2;

/* binomial(n1+n2, n2) - binomial(n1+n2, n2-1) */
s = bino(N, n2) - bino(N, n2-1);
ans = lift(s);
print(ans);
}
