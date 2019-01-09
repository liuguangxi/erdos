F(n) = {
    my(s);
    if (n == 0, return(Mod(1, 10^9+7)));
    if (mapisdefined(M, n), return(mapget(M, n)));
    s = sum(k = 1, n, binomial(n-1, k-1)*F(k-1)*(n-k)!*2^(n-k));
    mapput(M, n, s);
    return(s);
}


{
M = Map();
ans = lift(F(100));
print(ans);
}
