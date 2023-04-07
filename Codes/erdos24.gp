/*
By symmetry, the number of "up" and "down" type triangles are the same
Consider "up" type:
X(n) = 2*(S1(n) + S2(n))

(1) S1(n) is number of triangles in inner large "up" triangle
side k (1 <= k <= 3*n) has sum(i = 1, 3*n+1-k, i) =>
S1(n) = sum(k = 1, 3*n, sum(i = 1, 3*n+1-k, i))
      = n*(9*n^2 + 9*n + 2)/2

(2) S2(n) is number of triangles in outer 3 small "down" triangles
and number of triangles cross inner and outer triangles
On one corner， side k (1 <= k <= n-1) has sum(i = 1, n-k, i) =>
S2(n) = 3*sum(k = 1, n-1, sum(i = 1, n-k, i))
      = n*(n-1)*(n+1)/2

So, X(n) = 10*n^3 + 9*n^2 + n
*/


{
Y = 10 * 9 * 1;
ans = Y! % (10^9+9);
print(ans);
}
