/*
The problem is equivalent to
a^2 + b^2 = c^2 = 60^2
B = pi/2, angle of median AD and CF = arctan(1/3)
Angle(ADB) = arctan(1/3) + Angle(BCF) =>
arctan(b/(a/2)) = arctan(1/3) + arctan((b/2)/a)
Let b/a = r (r >= 1) =>
arctan(2*r) - arctan(r/2)  = arctan(1/3) =>
r = 1/4 * (9 + sqrt(65)) =>
b/a = 1/4 * (9 + sqrt(65)) =>
area = a*b/2 = 1/2*a^2*r = c^2*1/2*r/(1+r^2) = c^2/9 = 400
*/


{
x = 400;
t = x!;
while (t % 10 == 0, t /= 10);
ans = t % 10^5;
print(ans);
}
