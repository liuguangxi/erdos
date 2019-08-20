/*
OEIS A037224
a(4*n) = a(4*n+1) = (2*n)!/n!
a(4*n+2) = a(4*n+3) = 0
*/


{
N = 10^6;
P = 10^9 + 7;

vfac = vector(N\2); vfac[1] = Mod(1, P);
for (i = 2, N\2, vfac[i] = vfac[i - 1] * i);

s = 0;
for (k = 1, N,
    if (k % 4 == 2 || k % 4 == 3, next);
    n = k \ 4;
    if (n == 0, s++, s += vfac[2*n]/vfac[n]);
);
print(lift(s));
}
