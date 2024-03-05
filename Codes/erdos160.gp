/*
gi = 4*F(i)*F(i+2)-F(i)^2 =>
g(n) = 2*g(n-1) + 2*g(n-2) - g(n-3)
with g(1) = 7, g(2) = 11, g(3) = 36
*/


{
N = 987654321342198766;
A = Mod([2, 2, -1, 0; 1, 0, 0, 0; 0, 1, 0, 0; 2, 2, -1, 1], 1000000007);
x0 = Mod([36, 11, 7, 54]~, 1000000007);
x = A^(N-3)*x0;
ans = lift(x[4]);
print(ans);
}
