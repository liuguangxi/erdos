/*
X = sum(i = 1, n, sum(d|i, a^i))
  = sum(d = 1, n, sum(j = 1, n\d, a^(d*j))
  = sum(d = 1, n\2, sum(j = 1, n\d, (a^d)^j)) +
    sum(d = n\2+1, n, a^d)
  = sum(d = 1, n\2, ((a^d)^(n\d+1) - a^d)/(a^d - 1)) +
    ((a^d)^(n+1) - (a^d)^(n\2+1))/(a^d - 1)
*/


{
N = 7777777; A = 788788;
P = 10^9 + 7;

s = 0;
for (d = 1, N\2,
    apowd = Mod(A, P)^d;
    s += (apowd^(N\d+1) - apowd)/(apowd - 1);
);
s += (Mod(A, P)^(N+1) - Mod(A, P)^(N\2+1))/(Mod(A, P) - 1);
print(lift(s));
}
