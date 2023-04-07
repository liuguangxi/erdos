/*
f(k, x) = (x + x^3 + x^5 + ...)^k
        = (x/(1-x^2))^k
        = x^k * (1-x^2)^(-k)
        = x^k * sum(i = 0, inf, binomial(k+i-1, i)*x^(2*i))
        = sum(i = 0, inf, binomial(k+i-1, i)*x^(2*i+k))
k and N are odd => 2*i+k = N => i = (N-k)/2 =>
c(k, N) = binomial(k-1+(N-k)/2, (N-k)/2)
*/


{
N = 999999;
M = 10^9+7;
s = 0;
k = 5^3;
s += binomial(k-1+(N-k)/2, (N-k)/2);
k = 5^7;
s += binomial(k-1+(N-k)/2, (N-k)/2);
s %= M;
print(s);
}
