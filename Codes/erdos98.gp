/*
X(n) = ((-1)^n + 2^(n+1))/3
Y(n) = -(-1)^n + 2*3^n
X(k1) = Y(k2) => 3^(k^2+1) - 2^k1 = ((-1)^k1+3*(-1)^k2)/2
k1 = 0, k2 = 0 or k1 = 1, k2 = 0 =>
m = 1
*/


{
m = 1;
ans = m*123^(m+1);
print(ans);
}