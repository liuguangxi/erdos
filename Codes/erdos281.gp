/*
Fab = (a*(2-a))^n - (a*(2-a)-(2*b-a)*a)^n
fab = D(Fab,{a,b})
E = int(int(fab*(b-a),a,0,b),b,0,1)
  = n*2^n/(n+1) * int(b^(n+1)*(1-b)^(n-1),b,0,1)
*/


{
M = 998244353;
n = 192837;
t = Mod(1, M);
s = 0;
for (i = 0, n-1,
    s += t*(-1)^(n-1-i)/(2*n-i+1);
    t *= (n-1-i)/(i+1);
);
s *= Mod(2,M)^n*n/(n+1);
s = lift(s);
print(s);
}
