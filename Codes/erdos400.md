Let $N=10^7$, $A=7654567$, $B=7653567$, $M=10^9+7$.

### 1) Remove the outer $n$-sum

Each $\alpha$ appears for all $n=\alpha,\alpha+1,\dots,N$, i.e. $N-\alpha+1$ times. So
$$
S=\sum_{n=1}^{N}\sum_{\alpha=1}^{n}\sum_{x=0}^{\alpha-1}\sum_{y=0}^{\alpha-1}(Ax+By\bmod \alpha)
=\sum_{\alpha=1}^{N}(N-\alpha+1),T(\alpha),
$$
where
$$
T(a)=\sum_{x=0}^{a-1}\sum_{y=0}^{a-1}(Ax+By\bmod a).
$$

### 2) Evaluate $T(a)$

A standard counting argument shows
$$
T(a)=\frac{a^2}{2}\bigl(a-\gcd(a,\gcd(A,B))\bigr).
$$
Now $\gcd(A,B)=\gcd(7653567,7654567)=\gcd(7653567,1000)=\gcd(567,1000)=1$.
Hence $\gcd(a,\gcd(A,B))=1$ for all $a$, so
$$
T(a)=\frac{a^2(a-1)}{2}.
$$

Therefore
$$
S=\sum_{a=1}^{N}(N-a+1)\cdot \frac{a^2(a-1)}{2}.
$$

### 3) Convert to power sums

Write $N-a+1=(N+1)-a$. Then
$$
S=\frac12\sum_{a=1}^{N}\bigl((N+1)-a\bigr)(a^3-a^2)
=\frac12\Big((N+2)\sum_{a=1}^N a^3-(N+1)\sum_{a=1}^N a^2-\sum_{a=1}^N a^4\Big).
$$
Use
$$
\sum a^2=\frac{N(N+1)(2N+1)}6,\quad
\sum a^3=\Big(\frac{N(N+1)}2\Big)^2,\quad
\sum a^4=\frac{N(N+1)(2N+1)(3N^2+3N-1)}{30},
$$
and compute everything modulo $M$ (with modular inverses of $2,6,30$) at $N=10^7$.

### Result

$$
S \bmod (10^9+7)=\boxed{641893433}.
$$
