F1(a, b) = {
    my(v);
    v = vector(b, i, i);
    for (k = 2, a,
        for (i = 2, b, v[i] += v[i - 1]);
    );
    return(v[b]);
}


F2(a, b) = {
    my(pp0, pp, res);
    pp0 = Polrev(vector(b, i, i)) + O(x^b);
    pp = Polrev(vector(b, i, 1)) + O(x^b);
    res = pp^(a-1) * pp0;
    return(polcoef(res, b-1));
}


{
a = 6367;
b = 6571;
pnum = 2*a * F2(a, b);
pdem = binomial(a + b, a);
p = pnum / pdem;
ans = floor(p * 10^4);
print(ans);
}
