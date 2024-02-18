/*
Let s_k(n) be the k-th prefix sum of F_n =>
S_k(x) = x/(1-x-x^2)/(1-x)^k
s_k(n) = [x^n]S_k(x)
=>
s(N) = s_N(N) + sum(i = 1, N, F_{2*i} * binomial(2*N-i-1, N-i))
     = F_{3*N}
*/


{
N = 10^5;
M = 10^9+7;

/*
Sx = x/(1-x-x^2) / (1-x)^N + O(x^(N+1));
s = polcoef(Sx, N) + sum(i = 1, N, fibonacci(2*i) * binomial(2*N-i-1, N-i));
print(s);
*/
s = fibonacci(3*N);
ans = s % M;
print(ans);
}
