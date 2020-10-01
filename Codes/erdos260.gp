/*
K is positive integer and K > 1
sum(n = 1..inf, eulerphi(n)/(K^n-1)) = K/(K-1)^2
*/


{
K = 2020;
sn = suminf(n = 1, eulerphi(n)/(K^n-1));
sn_rat = bestappr(sn);
s = lift(Mod(sn_rat, 1000000007));
print(s);
}
