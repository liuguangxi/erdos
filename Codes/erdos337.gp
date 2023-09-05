/*
Let S_i be the state that exactly i types of characters occur odd number of times
=>
Pr(S_0 -> S_1) = 1, Pr(S_k -> S_k) = 1
for any 1 <= i <= k-1
Pr(S_i -> S_{i-1}) = i/k, Pr(S_i -> S_{i+1}) = 1-i/k
=>
k by k matrix Q in transition matrix is
[1       -1      0       ...                 ]
[-1/k    1       (1-k)/k ...                 ]
[0       -2/k    1       (2-k)/k ...         ]
...
[                                    (1-k)/k 1]
=>
t = (Q - I)^(-1) * c, where c is a column vector all of whose entries are 1
the answer is t(1)
*/


{
K = 2282023;
M = 10^9+7;

Mq = matrix(K, 3); Vc = vector(K, i, Mod(1, M));
for (i = 1, K,
    Mq[i,1] = Mod(-(i-1)/K, M);
    Mq[i,2] = Mod(1, M);
    Mq[i,3] = Mod((i-1-K)/K, M);
);
Mq[K,3] = Mod(0, M);

for (i = 1, K - 1,
    c = -Mq[i+1,1] / Mq[i,2];
    Mq[i+1,] += [Mq[i,2], Mq[i,3], 0] * c;
    Vc[i+1] += Vc[i] * c;
);
forstep (i = K, 2, -1,
    c = -Mq[i-1,3] / Mq[i,2];
    Mq[i-1,3] += Mq[i,2] * c;
    Vc[i-1] += Vc[i] * c;
);

ans = lift(Vc[1]);
print(ans);
}
