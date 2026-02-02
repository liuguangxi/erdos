You can turn the whole problem into counting lattice points under a line, because the coefficient bound (m^3-1) is exactly “three base-(m) digits”.

---

## 1) What is $|S(m)|$ really counting?

A polynomial in $S(m)$ is exactly a finite sequence $(a_0,a_1,\dots,a_k)$ with

* $0 \le a_i \le m^3-1$,
* $a_k>0$,
* $\sum_{i=0}^k a_i m^i = n$.

So $|S(m)|$ is the number of ways to represent $n$ as
$$
n=\sum_{i\ge 0} a_i m^i
\quad\text{with}\quad 0\le a_i\le m^3-1,
$$
and only finitely many nonzero $a_i$. (The “leading coefficient $>0$” is automatic once $n>0$: the highest nonzero coefficient is positive.)

---

## 2) Key bijection using 3 base-$m$ digits per coefficient

Because $0\le a_i\le m^3-1$, each coefficient has a unique base-$m$ expansion with **three digits**:
$$
a_i = b_{i,0} + b_{i,1}m + b_{i,2}m^2
\quad\text{where}\quad 0\le b_{i,j}\le m-1.
$$

Plug into $p(m)$:
$$
n=\sum_{i\ge 0}(b_{i,0}+b_{i,1}m+b_{i,2}m^2)m^i
= \sum_{i\ge 0}b_{i,0}m^i + m\sum_{i\ge 0}b_{i,1}m^i + m^2\sum_{i\ge 0}b_{i,2}m^i.
$$

Define three nonnegative integers (in base $m$, digits are exactly those $b_{i,j})$:
$$
A=\sum_{i\ge 0}b_{i,0}m^i,\quad
B=\sum_{i\ge 0}b_{i,1}m^i,\quad
C=\sum_{i\ge 0}b_{i,2}m^i.
$$

Then the equation becomes:
$$
n = A + mB + m^2 C.
$$

**Bijection claim (important):**

* Given any valid polynomial coefficients $a_i$, splitting each $a_i$ into $(b_{i,0},b_{i,1},b_{i,2})$ uniquely produces a triple $(A,B,C)$ satisfying $n=A+mB+m^2C$.
* Conversely, given any triple $(A,B,C)$ with $n=A+mB+m^2C$, write $A,B,C$ in base $m$ to get digits $b_{i,j}$, then set $a_i=b_{i,0}+b_{i,1}m+b_{i,2}m^2$. This gives $0\le a_i\le m^3-1$ and recovers the polynomial.

So **counting polynomials is the same as counting triples $(A,B,C)\ge 0$ with**
$$
n = A + mB + m^2C.
$$

Now $A$ is forced once $B,C$ are chosen:
$$
A = n - mB - m^2 C \ge 0.
$$

Therefore:
$$
|S(m)| = \#{(B,C)\in\mathbb Z_{\ge 0}^2 : mB + m^2C \le n}.
$$

This is just integer points under a line.

---

## 3) Closed form for $|S(m)|$

Fix $m$. Let
$$
t=\left\lfloor \frac{n}{m^2}\right\rfloor,\qquad q=\left\lfloor \frac{n}{m}\right\rfloor.
$$

For each $C\in[0,t]$, the allowed $B$ satisfy
$$
mB \le n - m^2C \iff B \le \left\lfloor \frac{n-m^2C}{m}\right\rfloor.
$$
But $\frac{n-m^2C}{m} = \frac{n}{m} - mC$, and since $mC$ is an integer,
$$
\left\lfloor\frac{n}{m} - mC\right\rfloor = \left\lfloor\frac{n}{m}\right\rfloor - mC = q - mC.
$$
So for each $C$, number of $B$’s is $(q-mC)+1$.

Hence
$$
|S(m)|
= \sum_{C=0}^{t} (q-mC+1)
= (t+1)(q+1) - m\sum_{C=0}^{t}C
$$
and $\sum_{C=0}^t C = t(t+1)/2$, giving:
$$
\boxed{|S(m)| = (t+1)(q+1) - m\cdot \frac{t(t+1)}{2}}
\quad\text{where }t=\left\lfloor \frac{n}{m^2}\right\rfloor,\; q=\left\lfloor \frac{n}{m}\right\rfloor.
$$

Special case: if $m>\sqrt n$ then $t=0$ and
$$
|S(m)| = q+1 = \left\lfloor \frac{n}{m}\right\rfloor + 1.
$$

---

## 4) Summing $\sum_{m=2}^n |S(m)|$ fast

Let $M=\lfloor \sqrt n\rfloor$.

### Part A: $2\le m\le M$

Compute $t=n//(m^2)$, $q=n//m$ and add the closed form in **O(1)** each.
This is about $M\approx 1.11\times 10^7$ iterations for your $n$, which is fine.

### Part B: $M < m \le n$

Here $t=0$, so we need:
$$
\sum_{m=M+1}^{n} \left(\left\lfloor\frac{n}{m}\right\rfloor + 1\right).
$$
The $+1$ part is easy: it contributes $n-(M+1)+1 = n-M$.

For $\sum \lfloor n/m\rfloor$, use the standard “quotient grouping” trick:
If $q=\lfloor n/l\rfloor$, then for all $m\in[l, r]$ with $r=\lfloor n/q\rfloor$, the quotient is constant $q$.
So we can add $(r-l+1)\cdot q$ at once and jump $l=r+1$.
This runs in about $O(\sqrt n)$ blocks.

---

## 5) Complete final Python code (correct + simple)

```python
import math

MOD = 10**9 + 7
INV2 = (MOD + 1) // 2  # modular inverse of 2 mod MOD

n = 123456789101112

def main():
    M = math.isqrt(n)
    ans = 0

    # Part A: m <= sqrt(n)
    for m in range(2, M + 1):
        q = n // m
        t = n // (m * m)

        # |S(m)| = (t+1)(q+1) - m * t(t+1)/2
        term = ( (t + 1) % MOD ) * ( (q + 1) % MOD ) % MOD
        tt = (t % MOD) * ((t + 1) % MOD) % MOD
        term = (term - (m % MOD) * tt % MOD * INV2) % MOD
        ans = (ans + term) % MOD

    # Part B: m > sqrt(n) => t = 0 => |S(m)| = floor(n/m) + 1
    l = M + 1
    while l <= n:
        q = n // l
        r = n // q
        cnt = r - l + 1
        ans = (ans + (cnt % MOD) * ((q + 1) % MOD)) % MOD
        l = r + 1

    print(ans % MOD)

if __name__ == "__main__":
    main()
```

Answer: 116954904
