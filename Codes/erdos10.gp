/*
In loop k(k > 1), the numbers on the diagonals are
d(k) = (2*k-1)^2, d(k)-(2*k-2), d(k)-2*(2*k-2), d(k)-3*(2*k-2)
sum of them = d(k) + d(k)-(2*k-2) + d(k)-2*(2*k-2) + d(k)-3*(2*k-2)
    = 4*(2*k-1)^2 - 6*(2*k-2)
    = 16*k^2 - 28*k + 16

For n*n (n is odd) spiral:
kmax = (n+1)/2
s = 1 + sum(k = 2, kmax, 16*k^2 - 28*k + 16)
  = (4*n^3 + 3*n^2 + 8*n - 9) / 6
*/


{
n = 10001;
ans = (4*n^3 + 3*n^2 + 8*n - 9) / 6;
print(ans);
}
