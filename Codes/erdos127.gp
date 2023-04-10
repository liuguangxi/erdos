/*
Pairing 2^(2*k)*(2*m+1) and 2^(2*k+1)*(2*m+1) as possible,
then delete 2^(2*k+1)*(2*m+1). The rest numbers are needed.
max(|P|) = N - #{2^(2*k+1)*(2*m+1) | k, m >= 0, 1 <= 2^(2*k+1)*(2*m+1) <= N}
*/


{
N = 4444444444;
kmax = (logint(N, 2) - 1) \ 2;
ans = N - sum(k = 0, kmax, (N \ 2^(2*k+1) - 1) \ 2 + 1);
print(ans);
}
