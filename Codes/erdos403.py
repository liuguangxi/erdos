'''
Let $m=94$. Then $m^3=94^3$, so each coefficient satisfies
$$
0\le a_i \le 94^3-1.
$$
Write each coefficient in base $94$:
$$
a_i = u_i + 94v_i + 94^2 w_i,\qquad u_i,v_i,w_i\in{0,1,\dots,93}.
$$
Then
$$
p(94)=\sum_{i\ge 0} a_i 94^i
= \sum_{j\ge 0} \bigl(u_j + v_{j-1} + w_{j-2}\bigr)94^j,
$$
$with (v_{-1}=w_{-1}=w_{-2}=0)$. Comparing base-$94$ digits gives a digit-by-digit constraint with a small carry (it never exceeds $2$ because $u_j+v_{j-1}+w_{j-2}\le 279$).

Now convert
$$
n=1234567891011
$$
to base $94$:
$$
n = (,1,74,20,57,33,6,19,)_{94},
$$
i.e. digits
$$
(d_0,\dots,d_6)=(19,6,33,57,20,74,1),
$$
and higher digits $d_7=d_8=\cdots=0$. Also any nonzero $a_i$ with $i\ge 7$ would force $p(94)\ge 94^7>n$, so only $a_0,\dots,a_6$ can be nonzero; nevertheless the $w_6$ digit contributes up to position $8$, so we must enforce digits through position $8$.

Carrying out the resulting finite DP over positions $0$ through $8$ (mod $10^9+7$) yields
$$
|S(94)| \equiv 735216614 \pmod{10^9+7}.
$$

**Answer:** $\boxed{735216614}$.
'''


# Computes |S(m)| mod 1e9+7 for:
#   S(m) = { p(x)=a0+a1 x+...+ak x^k  with ak>0,
#            each ai in {0,1,...,m^3-1},
#            and p(m)=n }
#
# This solution uses a base-m carry DP exploiting that m^3-1 implies each ai has
# exactly 3 base-m digits (u_i, v_i, w_i), and p(m) digit constraints only create
# small carries (0..2).

MOD = 10**9 + 7

def base_digits(n: int, b: int) -> list[int]:
    """Least-significant-first base-b digits of positive integer n."""
    digs = []
    while n > 0:
        digs.append(n % b)
        n //= b
    return digs

def count_S_mod(m: int, n: int, mod: int = MOD) -> int:
    digits = base_digits(n, m)          # d0..dK (LSB first)
    K = len(digits) - 1                 # highest power needed
    digits.extend([0, 0])               # ensure d_{K+1}=d_{K+2}=0

    inv_m  = pow(m, mod - 2, mod)
    inv_m2 = pow((m * m) % mod, mod - 2, mod)

    def carry_out_free(c: int, v: int, w: int, d: int) -> int:
        """
        Digit j where u_j is free (0..m-1), and we must satisfy:
          c + u_j + v + w = d + carry_out*m
        with u_j in [0, m-1]. This always has a unique solution, carry_out in {0,1,2}.
        """
        s = c + v + w
        if s <= d:
            return 0
        return (s - d + m - 1) // m  # ceil((s-d)/m), but 0 if s<=d

    # ---- j = 0 ----
    # Inputs: carry=0, v_{-1}=0, w_{-2}=0 fixed.
    d0 = digits[0]
    c1 = carry_out_free(0, 0, 0, d0)

    # After digit 0, we choose (v0, w0) freely: m^2 choices.
    dp = [0, 0, 0]          # dp[c] = total ways reaching carry c into next digit
    dp[c1] = (m * m) % mod

    # ---- j = 1 ----
    # Inputs: carry=c1, v0 free, w_{-1}=0 fixed.
    d1 = digits[1]
    cnt = [0, 0, 0]         # cnt[k] = number of v0 in [0..m-1] giving carry_out=k
    for v0 in range(m):
        k = carry_out_free(c1, v0, 0, d1)
        cnt[k] += 1

    # dp[c1] counts all (v0,w0) pairs uniformly, so weight per v0 is dp[c1]/m.
    # Then choose (v1,w1) freely: m^2 choices.
    dp1 = [0, 0, 0]
    for k in range(3):
        dp1[k] = dp[c1] * cnt[k] % mod
        dp1[k] = dp1[k] * inv_m % mod
        dp1[k] = dp1[k] * (m * m) % mod
    dp = dp1

    # ---- j = 2 .. K-1 ----
    # For these digits, (v_{j-1}, w_{j-2}) are free uniform pairs, independent of carry.
    for j in range(2, K):
        dj = digits[j]
        counts = [[0, 0, 0] for _ in range(3)]  # counts[c][k] over all (v,w) pairs
        for c in range(3):
            for v in range(m):
                for w in range(m):
                    k = carry_out_free(c, v, w, dj)
                    counts[c][k] += 1

        # dp[c] is uniform over the m^2 (v,w) pairs, so multiply by counts[c][k]/m^2,
        # then choose (v_j,w_j) freely: m^2 choices.
        dp_next = [0, 0, 0]
        for c in range(3):
            for k in range(3):
                dp_next[k] = (dp_next[k] + dp[c] * counts[c][k] % mod * inv_m2) % mod
        dp = [(x * (m * m)) % mod for x in dp_next]

    # ---- j = K ----
    # Still u_K is free, but later the digit at position K+2 forces w_K = 0,
    # so we only choose v_K (m choices), and fix w_K=0.
    dK = digits[K]
    counts = [[0, 0, 0] for _ in range(3)]
    for c in range(3):
        for v in range(m):
            for w in range(m):
                k = carry_out_free(c, v, w, dK)
                counts[c][k] += 1

    dp_next = [0, 0, 0]
    for c in range(3):
        for k in range(3):
            dp_next[k] = (dp_next[k] + dp[c] * counts[c][k] % mod * inv_m2) % mod
    dp = [(x * m) % mod for x in dp_next]   # choose v_K; w_K fixed 0

    # ---- j = K+1 ----
    # Here a_{K+1}=0, so u_{K+1}=0. Digit d_{K+1}=0.
    # Constraint: carry + v_K + w_{K-1} must be divisible by m.
    counts = [[0, 0, 0] for _ in range(3)]
    for c in range(3):
        for v in range(m):
            for w in range(m):
                t = c + v + w
                if t % m == 0:
                    k = t // m
                    if k < 3:
                        counts[c][k] += 1

    dp2 = [0, 0, 0]
    for c in range(3):
        for k in range(3):
            dp2[k] = (dp2[k] + dp[c] * counts[c][k] % mod * inv_m2) % mod
    dp = dp2

    # ---- j = K+2 ----
    # Digit d_{K+2}=0, u_{K+2}=0, v_{K+1}=0, and we fixed w_K=0.
    # So we must have carry = 0 (otherwise we'd create a nonzero higher digit).
    return dp[0] % mod


m = 94
n = 1234567891011
print(count_S_mod(m, n))
