'''
Let $m=a+1$. For each box type, the ordinary generating function is:

* Boxes $1$ to $n$ (at most $a=m-1$): $1+t+\cdots+t^{m-1}=\dfrac{1-t^{m}}{1-t}$
* Boxes $n+1$ to $2n$ (at most $2a+1=2m-1$): $1+t+\cdots+t^{2m-1}=\dfrac{1-t^{2m}}{1-t}$
* Boxes $2n+1$ to $4n$ (multiples of $m$): $1+t^{m}+t^{2m}+\cdots=\dfrac1{1-t^{m}}$

So the total generating function is
$$
G(t)=\left(\frac{1-t^{m}}{1-t}\right)^n\left(\frac{1-t^{2m}}{1-t}\right)^n\left(\frac1{1-t^{m}}\right)^{2n}
=\frac{(1-t^{2m})^n}{(1-t)^{2n}(1-t^{m})^{n}}.
$$

We want $[t^k]G(t)$. Expand:
$$
(1-t^{2m})^n=\sum_{j=0}^n(-1)^j\binom{n}{j}t^{2mj},
$$
$$
(1-t^m)^{-n}=\sum_{r\ge0}\binom{n+r-1}{r}t^{mr},
$$
$$
(1-t)^{-2n}=\sum_{s\ge0}\binom{2n+s-1}{s}t^{s}.
$$

Thus the coefficient of $t^k$ is
$$
\sum_{j\ge0}(-1)^j\binom{n}{j}
\sum_{r\ge0}\binom{n+r-1}{r}\binom{2n+(k-2mj-mr)-1}{k-2mj-mr},
$$
where we require $k-2mj-mr\ge0$.

With your values:
$$
n=1000005,\quad a=676767676767,\quad m=a+1=676767676768,\quad k=8888888888888,
$$
we have $k/m=13$ and $k/(2m)=6$, so the sums are tiny:

* $j=0,1,\dots,6$
* for each $j$, $r=0,1,\dots,13-2j$.

Evaluating the above expression modulo $10^9+7$ gives:

$$
\boxed{917563095}.
$$

So the number of valid distributions modulo (10^9+7) is **917563095**.
'''


import sys

MOD = 10**9 + 7

def solve(n: int, a: int, k: int) -> int:
    m = a + 1  # step for type-3 boxes (multiples of m)
    qmax = k // m  # max exponent in t^(m*q)

    # We need factorials up to K = 2n-1 (since C(2n+s-1, s) = C(2n+s-1, 2n-1))
    K = 2 * n - 1

    # Precompute factorials and inverse factorials up to K
    fact = [1] * (K + 1)
    for i in range(1, K + 1):
        fact[i] = (fact[i - 1] * i) % MOD

    invfact = [1] * (K + 1)
    invfact[K] = pow(fact[K], MOD - 2, MOD)
    for i in range(K, 0, -1):
        invfact[i - 1] = (invfact[i] * i) % MOD

    def comb_smallN(N: int, R: int) -> int:
        """nCr mod MOD for N <= K (precomputed factorial range)."""
        if R < 0 or R > N:
            return 0
        return (fact[N] * invfact[R] % MOD) * invfact[N - R] % MOD

    # Precompute B[q] = C(2n + s - 1, 2n - 1) where s = k - m*q, for q=0..qmax.
    # Compute via rising factorial: Π_{i=1..K} (s+i) / K!
    # Since K < MOD, division is safe via invfact[K].
    invfactK = invfact[K]
    B = [0] * (qmax + 1)

    for q in range(qmax + 1):
        s = k - m * q
        x = s % MOD  # we'll build (s+1) mod MOD, (s+2) mod MOD, ..., (s+K) mod MOD
        prod = 1
        for _ in range(K):
            x += 1
            if x == MOD:
                x = 0
            prod = (prod * x) % MOD
            if prod == 0:
                break
        B[q] = (prod * invfactK) % MOD

    # Main inclusion-exclusion sum:
    # ans = sum_{j>=0} (-1)^j C(n,j) * sum_{r>=0} C(n+r-1,r) * B[2j+r]
    # with constraints 2j+r <= qmax and j <= n and 2m*j <= k.
    maxj = min(n, k // (2 * m))

    ans = 0
    for j in range(maxj + 1):
        cj = comb_smallN(n, j)
        inner = 0
        maxr = qmax - 2 * j
        # r is small in the given data (<= 13), but this loop is correct for any maxr
        for r in range(maxr + 1):
            cr = comb_smallN(n + r - 1, r)  # stars and bars coefficient
            inner = (inner + cr * B[2 * j + r]) % MOD

        term = (cj * inner) % MOD
        if j & 1:
            ans = (ans - term) % MOD
        else:
            ans = (ans + term) % MOD

    return ans


n = 1000005
a = 676767676767
k = 8888888888888
print(solve(n, a, k) % MOD)
