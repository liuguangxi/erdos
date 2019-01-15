{
s = 0;
for (x = 2, 90, if (180 % x == 0, s++));
p = s / (90-2+1);
ans = numerator(p) * denominator(p);
print(ans);
}
