/*
Primitive Pythagoras triple (u^2-v^2, 2*u*v, u^2+v^2)
where u + v = 1 (mod 2) and gcd(u, v) = 1
(k*(u^2-v^2), k*(2*u*v), k*(u^2+v^2)) is Pythagoras triple
*/


{
N = 10^8;
check = vectorsmall(N);
vmax = ceil(sqrt(N/2));
for (v = 1, vmax,
    if (v % 10 == 0, print("v = ", v));
    umax = floor(sqrt(N - v^2) + 0.5);
    forstep (u = v + 1, umax, 2,
        if (gcd(u, v) != 1, next);
        x = u^2 + v^2;
        t = x;
        while (t <= N,
            check[t] = 1;
            t += x;
        );
    );
);
s = 0;
for (i = 1, N, if (check[i], s += i));
print(s);
}
