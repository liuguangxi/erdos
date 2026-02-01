Notice
$$
s(x)=\sum_{k\ge1}\frac{\mathbb E[\text{inv}^k]x^k}{k!}
= \mathbb E\!\left[e^{x\,\text{inv}}\right]-1.
$$
So at $x=\ln 5$,
$$
s(\ln 5)=\mathbb E[5^{\text{inv}}]-1.
$$

### Key observation about this permutation process

At step $t$ (1-indexed), there are $m=n-t+1$ numbers left.

* If you pick the **smallest**, it creates **0** inversions with later elements (it’s smaller than everything remaining).
* If you pick the **largest**, it creates exactly **$m-1=n-t$** inversions with later elements (it’s larger than everything remaining).

Let $B_t\in\{0,1\}$ indicate whether step $t$ picked the largest $(1)$ or smallest $(0)$. Each $B_t$ is independent and uniform, so:
$$
\text{inv}=\sum_{t=1}^n (n-t)\,B_t.
$$

Therefore the moment generating factorizes:
$$
\mathbb E!\left[5^{\text{inv}}\right]
=\prod_{t=1}^n \mathbb E!\left[5^{(n-t)B_t}\right]
=\prod_{k=0}^{n-1}\left(\frac{1+5^k}{2}\right).
$$
(The $k=0$ term is $1$, so it’s the same as $\prod_{k=1}^{n-1}\frac{1+5^k}{2}$.)

Thus
$$
s(\ln 5)=\left(\prod_{k=1}^{n-1}\frac{1+5^k}{2}\right)-1.
$$

### Now plug in $n=2026^2=4{,}104{,}676$ and reduce mod $998244353$

Compute
$$
\text{Ans}\equiv \left(\prod_{k=1}^{n-1}(1+5^k)\right)\cdot 2^{-(n-1)} -1 \pmod{998244353}.
$$

The resulting value is:
$$
\boxed{155246038}.
$$
