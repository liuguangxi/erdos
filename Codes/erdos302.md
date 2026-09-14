Let $d$ be the number of participants who are **not** superior. We will show

$$
d\ge 35136
$$

and then construct a friendship graph achieving equality.

Orient every friendship from the stronger player to the weaker player. Thus a player's outdegree is exactly the number of friends whose ability is lower.

### 1. Upper bound

First suppose

$$
M=2x-1.
$$

A participant is superior iff their outdegree is at least $x$.

The last $x$ participants cannot possibly be superior, since each has fewer than $x$ weaker participants available. Hence

$$
d\ge x.
$$

Also, participant $i$ has at most $i-1$ stronger people, so for $1\le i\le x$,

$$
\operatorname{outdeg}(i)\ge M-(i-1)=2x-i.
$$

These first $x$ players are therefore automatically superior.

If there are $N-d$ superior players, the total number of directed edges is at least

$$
(N-d)x+\sum_{i=1}^{x}\bigl((2x-i)-x\bigr)
=(N-d)x+\frac{x(x-1)}2.
$$

But the total number of friendships is exactly

$$
\frac{NM}{2}=\frac{N(2x-1)}2.
$$

Therefore

$$
\frac{N(2x-1)}2
\ge (N-d)x+\frac{x(x-1)}2,
$$

which simplifies to

$$
N\le x(2d-x+1).
$$

Since $x\le d$, the right-hand side is at most

$$
d(d+1).
$$

Thus

$$
\boxed{N\le d(d+1)}.
$$

For $N=1234567890$,

$$
35135\cdot35136=1234503360<N,
$$

while

$$
35136\cdot35137=1234573632>N.
$$

Hence

$$
d\ge35136.
$$

If $M$ is even, write $M=2x-2$. A similar count gives

$$
2N\le d(d+3)-2,
$$

which is an even stronger restriction here, so it cannot improve the answer.

Therefore the number of superior participants is at most

$$
N-35136
=\boxed{1234532754}.
$$

### 2. Construction attaining the bound

Take

$$
x=35136,\qquad M=2x-1=70271.
$$

Let the last $x$ participants form a set $T$, and let the first

$$
N-x=1234532754
$$

participants form $S$.

Within $S$, make two participants friends whenever their numbers differ by at most $x-1$. Then add friendships between $S$ and $T$ so that every member of $S$ has total degree $M$.

For a member of $S$ away from either end, exactly $x-1$ friends in $S$ are stronger and $x-1$ are weaker, so only one additional friend in $T$ is needed. Near either end, add the corresponding larger number of friends in $T$. This gives every member of $S$ at least $x$ weaker friends.

The numerical slack is

$$
x(x+1)-N=5742=2\cdot2871.
$$

So inside $T$, pair $2871$ disjoint pairs as friends. The remaining required degrees can then be supplied by the $S$-$T$ friendships; the degree totals match exactly.

Every member of $S$ has at least

$$
x=35136>\frac{70271}{2}
$$

weaker friends, so every member of $S$ is superior. No member of $T$ can be superior, because there are only $x-1$ possible weaker participants inside $T$.

Thus the bound is achievable.

$$
\boxed{\boxed{1234532754}}
$$
