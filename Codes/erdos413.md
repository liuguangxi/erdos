Let $S$ be the score. Since $A$ and $B$ partition all $2N$ values, $S=\sum B_i-\sum A_i=\sum_{x=1}^{2N}x-2\sum A_i$. So $S$ is maximized by minimizing $\sum A_i$. The unique minimum is obtained when ${A_1,\dots,A_N}={1,2,\dots,N}$, hence ${B_1,\dots,B_N}={N+1,\dots,2N}$.
Therefore
$$M=N^2.$$

For a permutation to attain $M$, mark each value $1,\dots,N$ as $A$, and each value $N+1,\dots,2N$ as $B$. The condition that the $i$-th $A$ occurs before the $i$-th $B$ for every $i$ is exactly the Dyck-word condition: in every prefix, $\#A\ge \#B$.

There are $C_N=\frac1{N+1}\binom{2N}{N}$ such $A/B$-patterns. For each pattern, the $N$ small numbers can be permuted arbitrarily among the $A$-positions and the $N$ large numbers arbitrarily among the $B$-positions.
Thus the answer is
$$C_N \cdot (N!)^2=\frac{(2N)!}{N+1}.$$

Now take $N=449499949, p=998244353$.
Then $2N=898999898,$ and $p-1-2N=99244454.$
By Wilson's theorem, $(p-1)!\equiv-1\pmod p.$
Since $99244454$ is even, $\prod_{x=2N+1}^{p-1}x\equiv (99244454)!\pmod p.$
Therefore $(2N)!\,(99244454)!\equiv-1\pmod p.$
Computing $99244454!\equiv966376054\pmod{998244353}$,
gives $(2N)!\equiv778072801\pmod{998244353}.$
Finally,
$$\frac{(2N)!}{N+1} \equiv 778072801\cdot(449499950)^{-1}\equiv \boxed{986788046}\pmod{998244353}.$$
