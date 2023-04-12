/*
Let A = [1, 1; 1, 0], then F(n+1) = (A^n)[1,1]
and A^k mod 1000000009 is period of 1000000008 in terms of power
S(N, K) = sum(n = 0, N, F(1 + n*K))
        = sum(n = 0, N, A^(n*K)[1,1])
        = sum(n = 0, N, (A^K)^n)[1,1]
        = (A^(K*(N+1)) - I) * (A^K - I)^(-1) [1,1]

phi(1000000008) = 281397888
N = 221^221^10^18 => N mod 1000000008 = 894341669
K = 55^55^10^18 => K mod 1000000008 = 608800807
*/


{
A = Mod([1, 1; 1, 0], 1000000009);
Nm = 894341669; Km = 608800807;
s = (A^(Km*(Nm+1)) - matid(2))*(A^Km - matid(2))^(-1);
ans = lift(s[1,1]);
print(ans);
}
