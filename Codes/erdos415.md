Let $s_k\in{\pm1}$ be the "active sign" after $k$ presses: the sign of the current number if we are reading digits, or the combined pending sign if we are between numbers. Initially $s_0=1$.

Also let
* $Y_k$ = signed value of the currently unfinished number, or $0$ if the expression currently ends in signs;
* $F_k$ = sum of all already-finished numbers.

Then the final calculator value is $X_n=F_n+Y_n$.

For the active sign, a digit preserves it. If a $+$ or $-$ is pressed, the two equally likely choices cancel in expectation. Hence, writing $S_k=\mathbb E[s_k]$,
$$
S_{k+1}=\frac{10}{12}S_k=\frac56S_k,
\qquad S_0=1,
$$
so $S_k=\left(\frac56\right)^k$.

Now consider $Y_k$. If the next button is digit $d$, then universally
$$
Y_{k+1}=10Y_k+s_kd,
$$
because when we are between numbers, $Y_k=0$. A sign button instead makes $Y_{k+1}=0$.

Therefore
$$
\begin{aligned}
\mathbb E[Y_{k+1}]
&=\sum_{d=0}^9\frac1{12}
\left(10\mathbb E[Y_k]+dS_k\right)\\
&=\frac{25}{3}\mathbb E[Y_k]+\frac{15}{4}\left(\frac56\right)^k.
\end{aligned}
$$
With $Y_0=0$, this solves to
$$
\mathbb E[Y_k]=
\frac12\left[\left(\frac{25}{3}\right)^k-\left(\frac56\right)^k\right].
$$

A finished number is added to $F_k$ precisely when the next button is a sign, which happens with probability $1/6$. Thus
$$
\mathbb E[F_{k+1}]
=\mathbb E[F_k]+\frac16\mathbb E[Y_k].
$$
Summing,
$$
\mathbb E[F_n]=
\frac1{12}\left[\frac{(25/3)^n-1}{25/3-1}-\frac{(5/6)^n-1}{5/6-1}\right].
$$
Simplifying,
$$
\mathbb E[F_n]=\frac{(25/3)^n-1}{88}+\frac{(5/6)^n-1}{2}.
$$

Adding $\mathbb E[Y_n]$, the $(5/6)^n$ terms cancel:
$$
\boxed{
\mathbb E[X_n]=
\frac{45}{88}
\left[
\left(\frac{25}{3}\right)^n-1
\right]
}.
$$

For $n=67280421310721,M=998244353$, we compute modulo $M$:
$$
\left(\frac{25}{3}\right)^n
\equiv 706375075\pmod M.
$$
Therefore
$$
\frac{45}{88}(706375075-1)
\equiv
\boxed{792274588}
\pmod{998244353}.
$$
