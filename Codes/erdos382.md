Let the annulus be $1\le r \le 2$. Pick two points $P_1,P_2$ uniformly by area.

### 1) Geometry for when the segment hits the inner disk

By rotational symmetry, fix $P_1$ on angle $0$. Let
$$
P_1=(r_1,0),\qquad P_2=(r_2\cos\phi,\ r_2\sin\phi),
$$
where $\phi\in[0,\pi]$ is the (absolute) angle difference. For two independent uniform angles, $\phi$ is uniform on $[0,\pi]$.

The segment intersects the inner circle (disk) iff the distance from the origin to the **line** through $P_1P_2$ is $<1$ and the perpendicular foot lies on the segment. The “boundary case” is when the line is tangent to the unit circle, i.e. its distance to the origin is exactly $1$.

Area of $\triangle OP_1P_2$ is $\frac12 r_1r_2\sin\phi$, also $\frac12 \cdot |P_1P_2| \cdot 1$ at tangency. So tangency means
$$
|P_1P_2| = r_1r_2\sin\phi.
$$
Using $|P_1P_2|^2=r_1^2+r_2^2-2r_1r_2\cos\phi$, this simplifies to a quadratic in $\cos\phi$ whose **smaller** root is
$$
\cos\phi_\ast=\frac{1-\sqrt{(r_1^2-1)(r_2^2-1)}}{r_1r_2}.
$$
One can check (and it’s true throughout $r_1,r_2\in[1,2]$) that the segment avoids the inner disk exactly when
$$
\phi<\phi_\ast=\arccos\!\left(\frac{1-\sqrt{(r_1^2-1)(r_2^2-1)}}{r_1r_2}\right).
$$
Since $\phi\sim\text{Unif}[0,\pi]$, the conditional probability is
$$
\Pr(\text{no hit}\mid r_1,r_2)=\frac{\phi_\ast}{\pi}.
$$

### 2) A slick trig substitution

Let $r=\sec\alpha$ (so $\alpha=\mathrm{arcsec}\, r=\arccos(1/r)$). Then $\sqrt{r^2-1}=\tan\alpha$, and
$$
\frac{1-\sqrt{(r_1^2-1)(r_2^2-1)}}{r_1r_2}
=\cos\alpha_1\cos\alpha_2-\sin\alpha_1\sin\alpha_2
=\cos(\alpha_1+\alpha_2).
$$
Here $r\in[1,2]\Rightarrow \alpha\in[0,\pi/3]$, so $\alpha_1+\alpha_2\in[0,2\pi/3]\subset[0,\pi]$, hence
$$
\phi_\ast=\arccos(\cos(\alpha_1+\alpha_2))=\alpha_1+\alpha_2.
$$
So
$$
\Pr(\text{no hit})=\mathbb E\!\left[\frac{\alpha_1+\alpha_2}{\pi}\right]
=\frac{2}{\pi}\,\mathbb E[\alpha].
$$

### 3) Compute $\mathbb E[\alpha]$

Uniform-by-area in the annulus gives radial density
$$
f(r)=\frac{2r}{2^2-1^2}=\frac{2r}{3},\quad 1\le r\le 2.
$$
So
$$
\mathbb E[\alpha]=\int_1^2 \mathrm{arcsec}\,(r)\,\frac{2r}{3}\,dr.
$$
Use $r=\sec\alpha$, $dr=\sec\alpha\,\tan\alpha\,d\alpha$, giving
$$
\mathbb E[\alpha]=\frac{2}{3}\int_{0}^{\pi/3} \alpha\,\sec^2\alpha\,\tan\alpha\,d\alpha.
$$
Since $\frac{d}{d\alpha}(\sec^2\alpha)=2\sec^2\alpha\tan\alpha$,
$$
\int \alpha,\sec^2\alpha,\tan\alpha,d\alpha
=\frac12\left[\alpha\sec^2\alpha-\int \sec^2\alpha,d\alpha\right]
=\frac12\left[\alpha\sec^2\alpha-\tan\alpha\right].
$$
Evaluate $0$ to $\pi/3$: $\sec^2(\pi/3)=4$, $\tan(\pi/3)=\sqrt3$. Thus
$$
\int_{0}^{\pi/3} \alpha \,\sec^2\alpha \,\tan\alpha\,d\alpha
=\frac12\left(\frac{4\pi}{3}-\sqrt3\right),
$$
$$
\mathbb E[\alpha]=\frac{2}{3}\cdot \frac12\left(\frac{4\pi}{3}-\sqrt3\right)
=\frac{4\pi}{9}-\frac{\sqrt3}{3}.
$$
Therefore
$$
\Pr(\text{no hit})=\frac{2}{\pi}\left(\frac{4\pi}{9}-\frac{\sqrt3}{3}\right)
=\frac{8}{9}-\frac{2}{\sqrt3\pi}.
$$

So it matches $\frac{a}{b}+\frac{c}{d\cdot\pi}$ with
$$
a=8,\ b=9,\ c=-2,\ d=\sqrt3.
$$
Then
$$
a^2+b^2+c^2+d^2=8^2+9^2+(-2)^2+(\sqrt3)^2=64+81+4+3=152.
$$
