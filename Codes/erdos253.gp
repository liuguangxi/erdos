{
N = 13579;

ans = sum(i = 0, N - 1, i*(i+1));    \\ (N-1)*N*(N+1)/3
print(ans);

/*N2 = N^2;
sbest = 0; vbest = [];
for (n = 2^N2, 2^(N2+1)-1,
    v = binary(n)[2..N2+1];
    x = y = vector(N);
    for (i = 1, N, for (j = 1, N,
        x[i] += v[(i-1)*N+j];
        y[i] += v[(j-1)*N+i];
    ));
    s = sum(i = 1, N, x[i] * (N - y[i]));
    if (s > sbest,
        print(s, "  ", v);
        sbest = s; vbest = v;
    );
);
print(sbest);
mbest = matrix(N, N, i, j, vbest[(i-1)*N+j]);
printp(mbest);*/
}
