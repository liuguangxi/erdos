'''
To determine the number of such strings, let's analyze the condition given. We are dealing with strings of length $N = 2702$ using a set of characters from $\{a_0, a_1, \dots, a_n\}$ (where $a_0 < a_1 < \dots < a_n$).

The condition states: **"for every character equal to $a_k$ in the string, $a_{k+1}, a_{k+2}, \dots, a_n$ must appear before it at least once."**

This imposes a strict hierarchy on the first appearance of characters:
- $a_n$ has no requirements (the set of characters with index $> n$ is empty). Thus, the string must effectively start with $a_n$ (or at least, $a_n$ must be the first character among the alphabet to appear).
- $a_{n-1}$ requires $a_n$ to have appeared before it.
- $a_{n-2}$ requires $a_{n-1}$ and $a_n$ to have appeared before it.
- In general, $a_k$ can only appear after all $a_j$ with $j > k$ have already appeared in the string.

Let's map the characters to a new set of values to make this standard. Let $v(x)$ be a value associated with character $x$ such that $v(a_n) = 0, v(a_{n-1}) = 1, \dots, v(a_0) = n$.
The condition translates to: a value $v \in \{0, \dots, n\}$ can only appear in the string if all values $0, 1, \dots, v-1$ have already appeared.
This is the exact definition of **Restricted Growth Strings** (specifically, those used to define partitions of a set). A string $s_1 s_2 \dots s_n$ is a restricted growth string if $s_1 = 0$ and $s_{i+1} \le \max(s_1, \dots, s_i) + 1$.
In our case, the alphabet size is large enough ($n+1$ available, but we can use at most $n$ distinct values in a string of length $n$) that the "upper bound" of the alphabet is never a limiting factor beyond the restricted growth rule itself.

The number of such strings of length $n$ is given by the **$n$-th Bell number**, $B_n$.
The Bell numbers satisfy the recurrence:
$$ B_{n+1} = \sum_{k=0}^{n} \binom{n}{k} B_k $$
We need to compute $B_{2702} \pmod{10^9 + 7}$.
'''


import sys

# Set the recursion limit just in case, though we use iterative approach
sys.setrecursionlimit(5000)

def solve():
    # The problem asks for the number of valid strings of length n = 2702.
    # Based on the analysis, this is the n-th Bell number.
    n = 2702
    MOD = 1000000007

    # We will use dynamic programming to compute Bell numbers.
    # B[i] will store the i-th Bell number.
    # We also need binomial coefficients. Since n is up to ~2700, O(n^2) is acceptable.

    # Precompute binomial coefficients (Pascal's triangle) modulo MOD
    # C[i][j] stores "i choose j"
    C = [[0] * (n + 1) for _ in range(n + 1)]
    for i in range(n + 1):
        C[i][0] = 1
        for j in range(1, i + 1):
            C[i][j] = (C[i-1][j-1] + C[i-1][j]) % MOD

    # Compute Bell numbers
    # B[i] = sum(C[i-1][k] * B[k] for k in 0..i-1)
    bell = [0] * (n + 1)
    bell[0] = 1

    for i in range(1, n + 1):
        val = 0
        # Formula: B_n = sum_{k=0}^{n-1} binomial(n-1, k) * B_k
        # Here calculating bell[i] using previous bell values
        for k in range(i):
            term = (C[i-1][k] * bell[k]) % MOD
            val = (val + term) % MOD
        bell[i] = val

    print(bell[n])

if __name__ == "__main__":
    solve()
