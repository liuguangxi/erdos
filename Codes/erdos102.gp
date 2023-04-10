/*
(x(1), x(2), ..., x(L)) where x(1) = 2 ~ N, x(2) ~ x(L-1) = 1 ~ N, x(L) = 1
x(i) != x(i + 1) for i = 1 ~ L-1
*/


{
N = 5011;
L = 999983;
M = 1000000007;
s = 0;
sgn = 1;
for (i = 2, L,
    s = (s + sgn) * (N - 1) % M;
    sgn = -sgn;
);
print(s);
}
