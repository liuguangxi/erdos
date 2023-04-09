/*
Let f(n, c) denote number of strings of length n with charactor c ended
(only first half)
f(1, c) = 1
when n > 1
f(n, G) = f(n-1, G) + f(n-1, T) + f(n-1, U) + f(n-1, B)
f(n, I) = f(n-1, I) + f(n-1, T) + f(n-1, H) + f(n-1, U) + f(n-1, B)
f(n, T) = f(n-1, G) + f(n-1, I) + f(n-1, H) + f(n-1, B)
f(n, H) = f(n-1, I) + f(n-1, T) + f(n-1, H) + f(n-1, U)
f(n, U) = f(n-1, G) + f(n-1, I) + f(n-1, H) + f(n-1, U) + f(n-1, B)
f(n, B) = f(n-1, G) + f(n-1, I) + f(n-1, T) + f(n-1, U) + f(n-1, B)
*/


{
M = 1000000007;
N = 7162534;    \\ even
A = Mod([1, 0, 1, 0, 1, 1; 0, 1, 1, 1, 1, 1; 1, 1, 0, 1, 0, 1; 0, 1, 1, 1, 1, 0; 1, 1, 0, 1, 1, 1; 1, 1, 1, 0, 1, 1], M);
x1 = Mod([1, 1, 1, 1, 1, 1]~, M);
s = A^(N/2-1)*x1;
ans = lift(s[1] + s[2] + s[4] + s[5] + s[6]);
print(ans);
}
