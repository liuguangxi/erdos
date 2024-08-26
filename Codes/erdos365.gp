/* SG(x) => https://oeis.org/A007814 */


conv(v1, v2) = {
    my(len, vv, t);
    len = #v1; vv = vector(len);
    for (i = 0, len - 1, for (j = 0, len - 1,
        t = bitxor(i, j);
        vv[t + 1] += v1[i + 1] * v2[j + 1];
    ));
    return(vv);
}


{
M = 987654321;
N = 324325346214122;
L = 2^(#binary(logint(N, 2)));
v0 = vector(L);
for (i = 1, #binary(N),
    v0[i] = N \ 2^i;
    if (N % 2^i >= 2^(i-1), v0[i]++);
);
v = conv(v0, v0);
v = conv(v, v0);
v = conv(v, v0);
ans = v[1] % M;
print(ans);
}
