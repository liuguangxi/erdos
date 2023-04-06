/*
F(i, j) = sum(x = 1, i - 1, x) = i*(i-1)/2, 2 <= i < j
S(N) = sum(2 <= i < j <= N, F(i, j))
     = sum(i = 2, N - 1, sum(j = i + 1, N, i*(i-1)/2))
     = 1/24 * (N - 2) * (N - 1) * N * (N + 1)
*/


{
N = 10^18;
M = 22011663;
ans = (1/24 * (N - 2) * (N - 1) * N * (N + 1)) % M;
print(ans);
}
