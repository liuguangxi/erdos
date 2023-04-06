/*
w <= s < d
r = m * d mod s, r = 0 or r >= w
*/


{
d = 2198200612608;
w = 250000000;

s1 = w; s2 = w + 10^7;
for (s = s1, s2,
    flg = 1;
    for (m = 1, d,
        r = m * d % s;
        if (r == 0, break);
        if (r < w, flg = 0; break);
    );
    if (flg,
        Smin = s;
        print("Smin = ", s); break;
    );
);

fordiv (d, r, if (r >= w, r0 = r; break));
Smax = d - r0;
print("Smax = ", Smax);

res = floor(Smax / Smin);
print(res);
}
