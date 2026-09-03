/*
Let
$$
B(i,r)={j:|i-j|\le r},\qquad
L_{i,r}=|B(i,r)|=1+\min(r,i-1)+\min(r,n-i).
$$

For an integer-valued $d_i$,
$$ \mathbb E[d_i]=\sum_{t\ge1}\Pr(d_i\ge t). $$

Put $r=t-1$. The event $d_i\ge r+1$ means that $p_i$ is smaller than every other value inside $B(i,r)$, except that $p_i=1$ gives $d_i=0$.

In a random permutation,
$$ \Pr(p_i=\min B(i,r))=\frac1{L_{i,r}}, $$
while
$$ \Pr(p_i=1)=\frac1n. $$
Hence
$$ \Pr(d_i\ge r+1)=\frac1{L_{i,r}}-\frac1n. $$

Therefore
$$
\mathbb E[X]
=\sum_{r=0}^{n-1}\sum_{i=1}^n \left(\frac1{L_{i,r}}-\frac1n\right)
=\sum_{r=0}^{n-1} A_r-n,
$$

where
$$ A_r=\sum_{i=1}^n\frac1{L_{i,r}}. $$

Define harmonic numbers
$$ H_k=\sum_{j=1}^k\frac1j,\qquad H_0=0. $$

For (2r+1\le n), the neighborhood lengths are
$$
r+1,r+2,\ldots,2r,
\underbrace{2r+1,\ldots,2r+1}_{n-2r},
2r,\ldots,r+1,
$$
so
$$ A_r=2(H_{2r}-H_r)+\frac{n-2r}{2r+1}. $$

For (2r+1>n),
$$ A_r=2(H_{n-1}-H_r)+\frac{2r-n+2}{n}. $$

Thus everything can be evaluated in $O(n)$ modulo $998244353$.
*/


{
N = 123456;
M = 998244353;
inv = vector(N, i, Mod(1/i, M));
H = vector(N+1); H[0+1] = Mod(1, M);
for (i = 1, N, H[i+1] = H[i-1+1] + inv[i]);
s = 0;
for (r = 0, N-1,
    if (2 * r + 1 <= N,
        A = 2 * (H[2 * r + 1] - H[r + 1]);
        A += (N - 2 * r) * inv[2 * r + 1];
        ,
        A = 2 * (H[N - 1 + 1] - H[r + 1]);
        A += (2 * r - N + 2) * inv[N];
    );
    s += A;
);
s -= N;
print(lift(s));
}
