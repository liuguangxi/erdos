Let location 1 be the “40% find” spot, and location 2 be the “100% find” spot.

Suppose the bull commits to a mixed strategy: it hides in location 1 with probability $b$ (so location 2 with probability $1-b$). Hercules knows $b$ but not the realization.

### Step 1: If Hercules searches location 2 right now

* He instantly wins if the bull is there (prob $1-b$).
* If the bull is in location 1 (prob $b$), he wastes 1 turn, learns it must be location 1, and then needs an expected $1/0.4=5/2$ more turns.

So
$$
V_2(b)=1+b\cdot \frac52.
$$

### Step 2: If Hercules searches location 1 right now

* He finds it this turn with probability $0.4b=\frac25 b$.
* Otherwise he fails with probability $1-\frac25 b$, and then he updates his belief.

If he searched location 1 and **failed**, Bayes gives the new belief that the bull is still in location 1:
$$
b'=\frac{b\cdot 0.6}{b\cdot 0.6 + (1-b)\cdot 1}
=\frac{\frac35 b}{1-\frac25 b}.
$$
Thus
$$
V_1(b)=1+\Bigl(1-\frac25 b\Bigr),V(b').
$$

### Step 3: When does Hercules prefer searching 1 vs 2?

At the “switch point” $b=b_0$, after one miss in location 1 he’s willing to go check location 2 next, so $V(b')=V_2(b')$. Plugging that into the indifference condition $V_1(b_0)=V_2(b_0)$ simplifies neatly to
$$
b_0=\frac57.
$$
So optimal play for Hercules is: search location 1 if $b>\frac57$, otherwise search location 2.

### Step 4: Now the bull chooses (b) to maximize the capture time

Compute $V(b)$ under Hercules’s optimal policy:

* If $b\le \frac57$: Hercules checks location 2 immediately
  $$
  V(b)=1+\frac52 b.
  $$

* If $\frac57 < b \le \frac{25}{31}$: after one miss in location 1, the posterior drops to $\le \frac57$, so Hercules checks location 2 next. In this whole interval the value collapses to a linear function
  $$
  V(b)=2+\frac{11}{10}b,
  $$
  which is **increasing**, so it’s maximized at $b=\frac{25}{31}$.

* If $b>\frac{25}{31}$: Hercules is confident enough that even after one miss he still prefers checking location 1 again; this region’s value turns into a **decreasing** linear function (so it won’t beat the endpoint $b=\frac{25}{31})$.

Therefore the bull’s best mixed strategy is
$$
b=\frac{25}{31}.
$$

### Step 5: The game value

At $b=\frac{25}{31}$,
$$
V\Bigl(\frac{25}{31}\Bigr)=2+\frac{11}{10}\cdot \frac{25}{31}
=2+\frac{55}{62}
=\frac{179}{62}.
$$

So the expected number of turns is $\boxed{\frac{179}{62}}$, hence

$$
\boxed{p,q = 179,62}.
$$
