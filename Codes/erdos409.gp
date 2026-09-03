{
N = 9696969;
ans = sum(k = 1, N, moebius(k) * (N\k)^2);
print(ans);
}
