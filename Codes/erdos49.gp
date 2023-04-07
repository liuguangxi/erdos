/*
OEIS A176085
Let a(n) = f_n(n) =>
a(n) = (2*(4*n-9)*a(n-1) - (15*n-38)*a(n-2) - 2*(2*n-5)*a(n-3)) / (n-2)
*/


{
M = 1000000007;
N = 10^8;
a_1 = Mod(11, M); a_2 = Mod(3, M); a_3 = Mod(1, M);
for (n = 4, N,
    if (n % 1000000 == 0, print("n = ", n));
    a = (2*(4*n-9)*a_1 - (15*n-38)*a_2 - 2*(2*n-5)*a_3) / Mod(n-2, M);
    a_3 = a_2; a_2 = a_1; a_1 = a;
);
ans = lift(a);
print(ans);
}
