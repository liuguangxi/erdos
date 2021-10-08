{
N = 7777777777777777777;
M = 10^9+7;
P = 31;
n = digits(N, P); k = #n;
ans = sum(i = 1, k - 1, n[i] * (P^(k-i) - prod(j = i + 1, k, n[j] + 1))) % M;
print(ans);
}
