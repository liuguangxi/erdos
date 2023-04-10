/*
Rectangle a*b (a >= b), inner rectangle long side is aa (a < aa < sqrt(a^2+b^2))
=> h1/aa = (a-x)/y, h2/aa = (b-y)/x, x^2 + y^2 = aa =>
when h1 = h2, (a-x)*x-(b-y)*y = 0 =>
maximum height of inner rectangle is h = aa*(a-x)/y
*/


{
a = 22543; b = 22541;
s = 0;
for (aa = a + 1, sqrtint(a^2 + b^2),
    x1 = sqrt(aa^2-b^2); x2 = a;
    x = solve(x = x1, x2, a*x-x^2-b*sqrt(aa^2-x^2)+aa^2-x^2);
    y = sqrt(aa^2-x^2);
    h = aa*(a-x)/y;
    s += floor(h);
);
print(s);
}
