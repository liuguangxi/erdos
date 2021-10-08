{
M = 10^9+7;
a = 2718281;
b = (a + 1) / 2;
n = b * (b + 1) / 2;
s = lift(Mod(2, M)^n - 2);
print(s);
}
