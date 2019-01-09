{
M = 1000000007;
n = 2000*2000;
k = 15;
e1 = n / 1;
e2 = n / 4;
e3 = n / 2;
e4 = n / 4;
s = (Mod(k, M)^e1 + Mod(k, M)^e2 + Mod(k, M)^e3 + Mod(k, M)^e4) / 4;
print(lift(s));
}
