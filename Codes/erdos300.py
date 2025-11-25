'''
To solve this problem, we first need to understand the sorting strategy described.

### Analysis of the Strategy

The process described is exactly one pass of the **Bubble Sort** algorithm:
1.  Scan the array from left to right.
2.  Compare adjacent elements $(i, i+1)$.
3.  Swap them if they are in the wrong order (descending).

You perform this process $K = 2022$ times. We need to find the number of initial permutations of length $N = 5000$ that become fully sorted after $K$ passes.

### Key Insight: Element Movement

In one pass of Bubble Sort:
*   Larger elements can move to the right by many steps (bubbling up).
*   However, a smaller element can move to the **left by at most 1 step**.

For the array to be sorted, an element with value $v$ (where values are $0, 1, \dots, N-1$ corresponding to their final sorted indices) must end up at index $v$. If this element starts at index $i$ in the initial arrangement, and $i > v$, it must move $i - v$ steps to the left.

Since it takes at least 1 pass to move 1 step to the left, the condition for the array to be sorted after $K$ passes is:
$$ \text{Initial Index } i - \text{Sorted Index } v \le K $$
$$ i \le v + K $$

This condition must hold for all elements. If any element starts at an index $i$ such that $i > v + K$, it will not reach its correct position $v$ within $K$ passes.

### Combinatorial Counting

We need to count the number of permutations of values $0, 1, \dots, N-1$ such that for every value $v$, its position $i$ satisfies $0 \le i \le v + K$.

Let's place the values into the array one by one, from $v = 0$ to $v = N-1$.

1.  **Value $v=0$**:
    *   Constraint: $i \le 0 + K = K$.
    *   Valid positions: $0, 1, \dots, K$.
    *   Total available choices: $K + 1$.

2.  **Value $v=1$**:
    *   Constraint: $i \le 1 + K$.
    *   Valid positions: $0, 1, \dots, K+1$.
    *   Total positions: $K + 2$.
    *   Positions already occupied (by $v=0$): $1$.
    *   Available choices: $(K+2) - 1 = K + 1$.

3.  **Value $v=x$** (where $x + K < N$):
    *   Constraint: $i \le x + K$.
    *   Total positions in range $[0, x+K]$: $x + K + 1$.
    *   Positions already occupied (by $0, \dots, x-1$): $x$.
    *   Available choices: $(x + K + 1) - x = K + 1$.

    This constant number of choices ($K+1$) continues as long as the upper bound $x + K$ is less than $N-1$. This occurs for values $x$ ranging from $0$ to $N - K - 1$.
    *   Number of such values: $(N - K - 1) - 0 + 1 = N - K$.
    *   Contribution to the count: $(K + 1)^{N - K}$.

4.  **Value $v=x$** (where $x + K \ge N - 1$):
    *   Here, the constraint $i \le x + K$ effectively becomes $i \le N - 1$ because indices cannot exceed $N-1$.
    *   Valid positions: $0, 1, \dots, N-1$.
    *   Total positions: $N$.
    *   Positions already occupied: $x$.
    *   Available choices: $N - x$.

    This applies for $x$ from $N - K$ to $N - 1$.
    *   For $x = N - K$: Choices $= N - (N - K) = K$.
    *   For $x = N - K + 1$: Choices $= N - (N - K + 1) = K - 1$.
    *   ...
    *   For $x = N - 1$: Choices $= N - (N - 1) = 1$.
    *   Contribution to the count: $K \times (K-1) \times \dots \times 1 = K!$.

### Final Formula

The total number of valid permutations is:
$$ \text{Total} = (K + 1)^{N - K} \times K! \pmod{10^9 + 7} $$

### Calculation
Given:
*   $N = 5000$
*   $K = 2022$
*   Modulo $= 10^9 + 7$

We calculate: $(2023)^{2978} \times 2022! \pmod{10^9 + 7}$.
'''


def solve():
    # Constants
    MOD = 1000000007
    N = 5000
    K = 2022

    # If K >= N, bubble sort is guaranteed to sort any permutation (actually N-1 is enough)
    # The formula logic automatically handles this if we consider bounds,
    # but strictly for this problem N > K.
    if K >= N:
        # Calculate N!
        ans = 1
        for i in range(1, N + 1):
            ans = (ans * i) % MOD
        print(ans)
        return

    # Part 1: (K + 1) ^ (N - K)
    # We use built-in pow(base, exp, mod) for efficient modular exponentiation
    term1 = pow(K + 1, N - K, MOD)

    # Part 2: K!
    term2 = 1
    for i in range(1, K + 1):
        term2 = (term2 * i) % MOD

    # Final Result
    ans = (term1 * term2) % MOD

    print(ans)

if __name__ == "__main__":
    solve()
