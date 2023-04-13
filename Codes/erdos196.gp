{
vx = List();
for (x1 = 0, 3, for (x2 = 0, 3, for (x3 = 0, 3, for (x4 = 0, 3,
    if (x1 + x2 + x3 + x4 == 3, listput(vx, [x1, x2, x3, x4]));
))));
s = 0;
for (i = 1, #vx,
    x = vx[i];
    if (x[1] >= x[2], s++);
    if (x[1] >= x[3], s++);
    if (x[1] >= x[4], s++);
);
s /= #vx * 3;
p = numerator(s);
q = denominator(s);
ans = p^q % 1000000007;
print(ans);
}
