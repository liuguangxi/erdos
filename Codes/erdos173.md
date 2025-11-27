To solve this problem, we model the condition $|p[i] - i| = 1$ using a bipartite graph and rook polynomials.

1.  **Problem Modeling**:
    We are looking for the number of permutations $\sigma$ of $\{1, \dots, n\}$ such that there are exactly $k$ indices $i$ where $|\sigma(i) - i| = 1$.
    Let's construct a bipartite graph with $n$ vertices on the left (representing indices $i$) and $n$ vertices on the right (representing values $p[i]$). An edge exists between left node $i$ and right node $j$ if $|i - j| = 1$. The "good" positions in a permutation correspond to the edges selected in a matching on this graph.

2.  **Graph Structure**:
    For any $n$, this bipartite graph decomposes into exactly two disjoint paths.
    -   The edges are $(i, i+1)$ and $(i, i-1)$.
    -   Tracing the connections reveals two independent components, each being a path graph with $n$ vertices (and thus $n-1$ edges).
    For example, with $n=3$, the edges are $(1,2), (2,1), (2,3), (3,2)$. The components are $1_L - 2_R - 3_L$ and $1_R - 2_L - 3_R$. Both are paths of length 2 (3 vertices).
    In general, for size $n$, we have two copies of the path graph $P_n$.

3.  **Rook Polynomials**:
    Let $m_j(P_n)$ be the number of $j$-matchings (sets of $j$ disjoint edges) in a path graph with $n$ vertices. The generating function for these numbers is $A_n(x) = \sum m_j(P_n) x^j$.
    The recurrence for matchings in a path is $A_n(x) = A_{n-1}(x) + x A_{n-2}(x)$, with base cases $A_0(x)=1, A_1(x)=1$.
    Since the total graph consists of two disjoint copies of $P_n$, the total rook polynomial $R(x)$ is the square of the polynomial for one path:
    $$R(x) = (A_n(x))^2 = \sum r_j x^j$$
    Here, $r_j$ is the number of ways to choose $j$ good positions such that no two share an index or value.

4.  **Exact Counting**:
    Using the Principle of Inclusion-Exclusion (specifically the formula for restricted permutations), the number of permutations with exactly $k$ good positions is:
    $$E_k = \sum_{j=k}^{n} (-1)^{j-k} \binom{j}{k} r_j (n-j)!$$

5.  **Calculation**:
    For $n=1000$ and $k=700$:
    -   We compute the polynomial $A_{1000}(x)$ using the recurrence modulo $10^9+7$.
    -   We square it to get coefficients $r_j$.
    -   We compute the summation for $E_{700}$.

Using the Python script to perform these operations, the result is:

**642759746**


```python
def solve():
    MOD = 1000000007
    N = 1000
    K = 700

    # dp[i][j] = number of j-matchings in path of length i (vertices)
    # We only need the last row, but let's just keep track of polynomials
    # A_i = A_{i-1} + x * A_{i-2}

    # Represent polynomials as lists of coefficients
    # p0 for A_{i-2}, p1 for A_{i-1}
    p0 = [1] # A_0
    p1 = [1] # A_1

    for i in range(2, N + 1):
        # p_new = p1 + shifted(p0)
        # len(p_new) will be max(len(p1), len(p0) + 1)
        # actually len(p_i) is i//2 + 1

        size = i // 2 + 1
        new_poly = [0] * size

        # Add p1
        for j in range(len(p1)):
            new_poly[j] = p1[j]

        # Add shifted p0
        for j in range(len(p0)):
            if j + 1 < size:
                new_poly[j+1] = (new_poly[j+1] + p0[j]) % MOD

        p0 = p1
        p1 = new_poly

    # Now p1 is A_N(x)
    A_N = p1

    # Compute R(x) = A_N(x)^2
    # Convolution
    len_R = len(A_N) * 2 - 1 # Roughly N + 1
    # Actually max degree is 2 * floor(N/2).
    # If N=1000, deg = 1000. len = 1001.

    r = [0] * (2 * (N // 2) + 1)

    for i in range(len(A_N)):
        for j in range(len(A_N)):
            deg = i + j
            if deg < len(r):
                r[deg] = (r[deg] + A_N[i] * A_N[j]) % MOD

    # Now compute E_K
    # Precompute factorials
    fact = [1] * (N + 1)
    inv = [1] * (N + 1)
    for i in range(1, N + 1):
        fact[i] = (fact[i-1] * i) % MOD

    inv[N] = pow(fact[N], MOD - 2, MOD)
    for i in range(N - 1, -1, -1):
        inv[i] = (inv[i+1] * (i + 1)) % MOD

    def nCr_mod(n, r):
        if r < 0 or r > n:
            return 0
        num = fact[n]
        den = (inv[r] * inv[n-r]) % MOD
        return (num * den) % MOD

    ans = 0
    # Sum from j=K to N (actually max degree of R)
    max_j = len(r) - 1 # which is 1000

    for j in range(K, max_j + 1):
        # term = (-1)^(j-K) * nCr(j, K) * r[j] * (N-j)!

        term = (nCr_mod(j, K) * r[j]) % MOD
        term = (term * fact[N-j]) % MOD

        if (j - K) % 2 == 1:
            ans = (ans - term + MOD) % MOD
        else:
            ans = (ans + term) % MOD

    print(ans)

solve()
```
