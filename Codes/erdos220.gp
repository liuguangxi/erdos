﻿/*
a(n) = sum(i = 1, n, F(i)) =>
a(1) = 1, a(2) = 5, a(3) = 23, a(4) = 71, a(5) = 196, a(6) = 484
for n >= 7, a(n) = 4*a(n-1) - 3*a(n-2) - 5*a(n-3) + 5*a(n-4) + 3*a(n-5) - 2*a(n-6) - a(n-7)
*/


{
M = 10^9+7;
N = 10^18;
m = [4, -3, -5, 5, 3, -2, -1;
     1, 0, 0, 0, 0, 0, 0;
     0, 1, 0, 0, 0, 0, 0;
     0, 0, 1, 0, 0, 0, 0;
     0, 0, 0, 1, 0, 0, 0;
     0, 0, 0, 0, 1, 0, 0;
     0, 0, 0, 0, 0, 1, 0];
s0 = [1121, 484, 196, 71, 23, 5, 1]~;
sn = Mod(m, M)^(N-7)*Mod(s0, M);
ans = sn[1];
print(lift(ans));
}
