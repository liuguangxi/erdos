/*
S = {x : x = Fib(k) or 2^k, x <= N}
if n in S or exist s < n and in S, s.t. f(n-s) = 0, f(n) = 1
otherwise f(n) = 0
*/


{
N = 10^6;

S = List();
x = 2; while (x <= N, listput(S, x); x *= 2);
k = 1; x = 1; while (x <= N, listput(S, x); k++; x = fibonacci(k));
S = Set(S);

f = vectorsmall(N);
for (i = 1, N,
    if (setsearch(S, i),
        f[i] = 1,
        for (j = 1, #S,
            x = S[j];
            if (x >= i, break);
            if (f[i - x] == 0, f[i] = 1; break);
        );
    );
);

s = 0;
for (i = 1, N, if (f[i] == 0, s++));
print(s);
}
