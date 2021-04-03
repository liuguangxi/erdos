f(st) = {
    my(z, ret = Mod(0, M), stnew);
    if (vecsum(st) == 0, return(1));
    if (mapisdefined(Mf, st, &z), return(z));
    for (i = 1, 6,
        if (st[i] == 0, next);
        stnew = st; stnew[i]--;
        if (i > 1, stnew[i - 1] += 2);
        ret += st[i] * f(stnew);
    );
    mapput(Mf, st, ret);
    return(ret);
}


{
M = 1000000007;
Mf = Map();
s = f([0, 0, 0, 0, 0, 1]);
print(lift(s));
}
