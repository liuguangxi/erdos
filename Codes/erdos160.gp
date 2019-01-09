/*
x^2-4*x*y-y^2 = -1 and x > 0, y > 0 =>
a1(n) = x^2+y^2 = 322*a1(n-1) - a1(n-2), a1(1) = 17, a1(2) = 5473
x^2-4*x*y-y^2 = 1  and x > 0, y > 0 =>
a2(n) = x^2+y^2 = 322*a2(n-1) - a2(n-2), a2(1) = 305, a2(2) = 98209

=> Di^2 = a(n) = 18*a(n-1) - a(n-2), a(0) = 1, a(1) = 17, a(2) = 305
=>
[a(n), a(n-1), S(n)]' = [18, -1, 0; 1, 0, 0; 18, -1, 1] * [a(n-1), a(n-2), S(n-1)]'
*/


{
M = 1000000009;
N = 10^15;
x0 = Mod([17, 1, 17]~, M);
A = Mod([18, -1, 0; 1, 0, 0; 18, -1, 1], M);
x = A^(N-1)*x0;
ans = lift(x[3]);
print(ans);
}
