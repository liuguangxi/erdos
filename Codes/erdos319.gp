/*
State: (s1, s2, exist) <-> Value : [1, 18]
s1 = 0,1,2, s2 = 0,1,2, exist = 0,1

for n >= 1, B(n+1) = 3*A(n)
*/


st2idx(st) = st[1]*6 + st[2]*2 + st[3] + 1;

idx2st(idx) = [(idx-1)\6, (idx-1)\2%3, (idx-1)%2];


{
N = 1001;
Nst = 18;
f = matrix(N, Nst);
for (i = 1, Nst, if ((i - 1) % 2 == 0, f[2,i] = 1));
for (i = 2, N - 1,
    for (j = 1, Nst,
        st = idx2st(j);
        for (sym = 0, 2,
            if ([st[1], st[2], sym] == [0, 1, 2],
                if (st[3] == 0, f[i+1, st2idx([1,2,1])] += f[i,j]),
                f[i+1, st2idx([st[2],sym,st[3]])] += f[i,j];
            );
        );
    );
);

A = vector(N);
for (i = 1, N,
    forstep (j = 2, Nst, 2, A[i] += f[i,j]);
);
B = concat(0, A*3);

ans = sum(n = 100, 1000, (A[n-1]*B[n+1]*A[n+1])/(B[n]*B[n+2]*A[n]));
a = numerator(ans); b = denominator(ans);
res = a + b;
print(res);
}
