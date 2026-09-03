get_score(v) = {
    my(vc, nw, k, m1, m2);
    vc = vector(10); nw = 0;
    for (i = 1, #v,
        if (v[i] == 0, nw++, vc[v[i]] = 1);
    );
    k = 1;
    for (i = 1, nw,
        while (vc[k], k++); k++;
    );
    while (vc[k], k++); m1 = k; k++;
    while (vc[k], k++); m2 = k;
    return(m1 * m2);
}


rec(k, rest) = {
    my(sc, vk, score);
    if (k <= 10,
        for (x = 0, min(rest, 4),
            C[k] = x;
            rec(k + 1, rest - x);
        ),
        C[k] = rest;
        sc = prod(i = 1, 10, binomial(4, C[i])) * binomial(12, C[11]);
        vk = vector(C[11]); for (i = 1, 10, vk = concat(vk, vector(C[i], z, i)));
        score = get_score(vk);
        Ans += score * sc;
    );
}


{
M = 998244353;
C = vector(11);
S = binomial(52, 7);
Ans = 0;
rec(1, 7);
Ans = Ans / S % M;
print(Ans);
}
