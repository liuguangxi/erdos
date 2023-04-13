/* |S(N)| = fibonacci(N + 2) */


{
N = 30;
A = fibonacci(N + 2);
B = sumdigits(A);

t = 0;
for (x = 2^N, 2^(N+1)-1,
    d = digits(x, 2)[2..N+1];
    ok = 1;
    for (i = 1, N - 1,
        if (d[i] == 1 && d[i + 1] == 1, ok = 0; break);
    );
    if (ok, t++; if (t == B, break));
);

ans = N - vecsum(d);
print(ans);
}
