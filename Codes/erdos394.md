Let
$$
z_j=\frac14\omega^{,j-1}\quad (j=1,\dots,2026),\qquad \omega^{2026}=1.
$$

### Step 1: Simplify the inner sum over $i$

Define
$$
F(t)=\sum_{i=1}^{\infty} p(i)\frac{t^i}{1-t^i}.
$$
Expand $\frac{t^i}{1-t^i}=\sum_{k\ge1} t^{ik}$, so the coefficient of $t^n$ in $F(t)$ is
$$
\sum_{i\mid n} p(i).
$$
But every binary string of length $n$ has a unique minimal period $i\mid n$, hence
$$
\sum_{i\mid n} p(i)=2^n.
$$
Therefore
$$
F(t)=\sum_{n\ge1}2^n t^n=\frac{2t}{1-2t}\qquad (|t|<1/2).
$$
Since $|z_j|=1/4$, convergence holds and the original double sum becomes
$$
\sum_{j=1}^{2026} F(z_j)=\sum_{j=1}^{2026}\frac{2z_j}{1-2z_j}.
$$

### Step 2: Sum over the $2026$ roots

Here $2z_j=\frac12\omega^{j-1}$. Let $N=2026$, $r=\frac12$. Then we need
$$
\sum_{k=0}^{N-1}\frac{r\omega^k}{1-r\omega^k}.
$$
Use the standard identity (roots-of-unity filter):
$$
\sum_{k=0}^{N-1}\frac{r\omega^k}{1-r\omega^k}= \frac{N r^N}{1-r^N}.
$$
So
$$
\sum_{j=1}^{2026}\frac{2z_j}{1-2z_j}
= \frac{2026\left(\frac12\right)^{2026}}{1-\left(\frac12\right)^{2026}}
= \frac{2026}{2^{2026}-1}.
$$

### Step 3: Modulo $998244353$

We output
$$
2026\cdot (2^{2026}-1)^{-1}\pmod{998244353}.
$$
Numerically,
$$
2^{2026}\equiv 724090444 \pmod{998244353}\Rightarrow 2^{2026}-1\equiv 724090443,
$$
and
$$
2026\cdot(724090443)^{-1}\equiv \boxed{986260392}\pmod{998244353}.
$$

**Answer: $\boxed{986260392}$.**
