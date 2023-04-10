/*
The sequence is equivalent to binary representation
(without any two consecutive '1's) of natural numbers

Let f(n) = [s, s1] denotes total numbers / '1's
in all valid binary representations of length n
when n = 1, f(1) = [1, 1]
when n > 1,
    f(n)[1] = 1 + sum(k = 1, n-2, f(k)[1])
    f(n)[2] = 1 + sum(k = 1, n-2, f(k)[1] + f(k)[2])
*/


print_seq(n) = {
    my(v, ok, t = 0);
    for (x = 1, n,
        v = digits(x, 2);
        ok = 1;
        for (i = 1, #v-1,
            if (v[i] == 1 && v[i+1] == 1, ok = 0; break);
        );
        if (ok, t++; print(t, "  ", v));
    );
}


f(n) = {
    my(t, s1, s2);
    if (n == 1, return([1, 1]));
    if (mapisdefined(M, n), return(mapget(M, n)));
    s1 = 1; s2 = 1;
    for (k = 1, n - 2,
        t = f(k);
        s1 += t[1]; s2 += t[1] + t[2];
    );
    mapput(M, n, [s1, s2]);
    return([s1, s2]);
}


calc(n) = {
    my(s = 0, rest, fn, lmax, v, shrd);

    rest = n; lmax = 0;
    while (1,
        lmax++; fn = f(lmax);
        if (fn[1] * lmax <= rest,
            s += fn[2]; rest -= fn[1] * lmax,
            break;
        );
    );
    if (rest == 0, return(s));

    v = vector(lmax); v[1] = 1;
    shrd = 1;
    while (rest > 0,
        for (k = 0, lmax - 1,
            if (k == 0,
                if (lmax <= rest,
                    rest -= lmax; s += shrd,
                    s += vecsum(v[1..rest]); rest = 0;
                ),
                fn = f(k);
                if (fn[1] * lmax <= rest,
                    rest -= fn[1] * lmax; s += fn[2] + shrd * fn[1],
                    shrd++; v[lmax + 1 - k] = 1; break;
                );
            );
        );
    );

    return(s);
}


{
\\print_seq(50);
M = Map();
N = 10^15;
ans = calc(N);
print(ans);
}
