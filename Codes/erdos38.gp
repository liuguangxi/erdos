/*
Exchange 8 and 10 we get 12, 8, 10, 10, 8, 12
10, 8, 12 lie in semicircle
Let radius of circle is r, then
arccos((r^2+r^2-10^2)/(2*r*r)) + arccos((r^2+r^2-8^2)/(2*r*r)) +
arccos((r^2+r^2-12^2)/(2*r*r)) = Pi =>
r = 10.0445753478981453155243
*/

{
r = 10.0445753478981453155243;
A = 0;
s = (r + r + 10)/2;
A += sqrt(s*(s-r)*(s-r)*(s-10));
s = (r + r + 8)/2;
A += sqrt(s*(s-r)*(s-r)*(s-8));
s = (r + r + 12)/2;
A += sqrt(s*(s-r)*(s-r)*(s-12));
A *= 2;
N = floor(100 * A);

/* N = 25749 = 3^2*2861*/
x = 3; y = 2861;
Y = y;
ans = prime(Y);
print(ans);
}
