Let $I(n)=n$ and $g_k(n)=n^k$. Since $\sigma_k=1*g_k$ under Dirichlet convolution, and $\phi*1=I$, we get
$$
F_k=\phi*\sigma_k=\phi*1*g_k=I*g_k.
$$
Hence both $F_k$ and $\sigma_k$ are multiplicative.

For a prime power $p^a$,
$$
F_k(p^a)=\sum_{j=0}^a p^j p^{k(a-j)}.
$$
Define $A_t=\sum_{r=0}^a p^{rt}$. Changing $r=a-j$,
$$
F_k(p^a)
=p^a\sum_{r=0}^a p^{r(k-1)}
=p^aA_{k-1},
$$
while $\sigma_k(p^a)=A_k$.
Therefore
$$
\frac{F_k(p^a)}{\sigma_k(p^a)}
=p^a\frac{A_{k-1}}{A_k}.
$$

Multiplying from $k=1$ to $M$ telescopes:
$$
\prod_{k=1}^M\frac{F_k(p^a)}{\sigma_k(p^a)}
=p^{aM}\frac{A_0}{A_M}
=p^{aM}\frac{a+1}{1+p^M+\cdots+p^{aM}}.
$$

Now
$$
1234567890=2\cdot3^2\cdot5\cdot3607\cdot3803.
$$
Thus
$$
\prod_{k=1}^M\frac{F_k(N)}{\sigma_k(N)}
=N^M \frac{48}{(1+2^M)(1+3^M+3^{2M})(1+5^M)(1+3607^M)(1+3803^M)}.
$$

Modulo $P=10^9+7$, with $M=10^{15}$, fast modular exponentiation gives
$$
N^M\equiv869504589\pmod P,
$$
and
$$
\begin{aligned}
1+2^M&\equiv264444360,\\
1+3^M+3^{2M}&\equiv112314253,\\
1+5^M&\equiv410143884,\\
1+3607^M&\equiv564170192,\\
1+3803^M&\equiv882459106.
\end{aligned}
$$
Their product is $D\equiv285914836\pmod P$, so $D^{-1}\equiv15686283\pmod P$.

Finally,
$$
869504589\cdot48\cdot15686283
\equiv\boxed{954125877}\pmod{10^9+7}.
$$
