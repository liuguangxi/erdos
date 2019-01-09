p(k, m, n) = ((m-k+1)^n-(m-k)^n)/m^n;


{
M = 100; N = 20;
E = sum(k = 1, M, p(k, M, N) * k);
ans = floor(E * 10^6);
print(ans);
}
