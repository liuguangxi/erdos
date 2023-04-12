/*
0 <= P(xi) <= 1, sum(i = 1, k, P(xi)) = 1
F(x) = sum(i = 1, k, P(xi)*log2(1/P(Xi))) =>
max(F(x)) = log2(k) with P(Xi) = 1/k

0 <= Xi <= 1, sum(i = 1, k, Xi) = 1 =>
T = max(1/sum(i = 1, k, Xi^2)) = k with Xi = 1/k
*/


{
k = 2^13;
T = k;
ans = T! % 1000000007;
print(ans);
}
