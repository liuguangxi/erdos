/*
Let n = 2*k+1, k >= 0 =>
M(2*k) + M(2*(k+1)) = 5*F(2*k+1)
Let a(k) = M(2*k) =>
a(0) = M(0) = 2
when k >= 0, a(k+1) = 5*F(2*k+1) - a(k) =>
prod(n = 1, 9, M(2^n)) = prod(n = 0, 8, a(2^n))
*/


{
a = vector(256);
a[1] = 5*fibonacci(1) - 2;
for (k = 1, 255, a[k+1] = 5*fibonacci(2*k+1) - a[k]);
s = prod(n = 0, 8, a[2^n]);
ans = s % 1000000007;
print(ans);
}
