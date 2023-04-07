{
d = divisors(2450);
for (i1 = 1, #d, for (i2 = i1, #d, for (i3 = i2, #d,
    d1 = d[i1]; d2 = d[i2]; d3 = d[i3];
    if (d1 * d2 * d3 == 2450,
        printf("(%d %d %d)  %d  %d\n", d1, d2, d3, d1+d2+d3, d1^3+d2^3+d3^3);
    );
)));

print(7^3+7^3+50^3+49^3);
}
