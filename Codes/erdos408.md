To determine the expected number of steps until all $n$ people become infected, we analyze the structure of the graph formed at each step and the resulting Markov chain.

### 1. Cycle Structure and Infection Spread
At each step, a uniformly random permutation $p \in S_n$ defines an undirected graph where each person $i$ is connected to $p_i$. The connected components of this graph are precisely the disjoint cycles of the permutation $p$.

If an infected person belongs to a cycle $C$, every person in $C$ is connected to that infected person and thus becomes infected by the end of the step. Conversely, if a cycle $C$ contains no infected people (i.e., $C \subseteq U$, where $U$ is the set of currently uninfected people), no person in $C$ becomes infected during this step.

Therefore, the set of people remaining uninfected after a step is precisely the union of all cycles of $p$ that are entirely contained in $U$.

---

### 2. Transition Probabilities
Let $m = |U|$ denote the number of uninfected people before the step. For a uniformly random permutation $p \in S_n$, the probability that the union of cycles entirely contained in $U$ has size $j$ (where $0 \le j \le m$) is given by:
$$
P(m \to j) = \frac{\binom{n - 1 - j}{m - j}}{\binom{n}{m}}.
$$

---

### 3. Expected Value Recurrence
Let $E_m$ denote the expected number of additional steps to infect all $n$ people, starting with $m$ uninfected people. The boundary condition is $E_0 = 0$.

For $1 \le m \le n-1$, the recurrence relation is:
$$
E_m = 1 + \sum_{j=0}^{m} P(m \to j) E_j = 1 + P(m \to m) E_m + \sum_{j=0}^{m-1} P(m \to j) E_j.
$$

Multiplying both sides by $\binom{n}{m}$ and using $P(m \to m) = \frac{1}{\binom{n}{m}}$:
$$
\left(\binom{n}{m} - 1\right) E_m = \binom{n}{m} + \sum_{j=0}^{m-1} \binom{n - 1 - j}{m - j} E_j,
$$
which simplifies to:
$$
E_m = \frac{\binom{n}{m} + \sum_{j=0}^{m-1} \binom{n - 1 - j}{m - j} E_j}{\binom{n}{m} - 1}.
$$

---

### 4. Calculation for $n = 2026$
Since exactly 1 person is initially infected, there are $m = n - 1 = 2025$ uninfected people at the beginning. We compute $E_{n-1}$ modulo $998244353$ using the recurrence.

Evaluating this for $n = 2026$ gives:
$$
E_{2025} \equiv 950048839 \pmod{998244353}.
$$
