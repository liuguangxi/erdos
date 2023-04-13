{
p = 10^9+7;
n = 74; m = 13;
idx0 = [6, 14, 19, 20, 21, 24, 30, 43, 58, 61, 69, 70, 73];

vblack = List(); lenblack = 0;
if (idx0[1] > 1,
    listput(vblack, [idx0[1] - 1, 1]);
    lenblack += idx0[1] - 1;
);
if (idx0[m] < n,
    listput(vblack, [n - idx0[m], 1]);
    lenblack += n - idx0[m];
);
for (i = 1, m - 1,
    d = idx0[i + 1] - idx0[i];
    if (d > 1,
        listput(vblack, [d - 1, 2^(d - 2)]);
        lenblack += d - 1;
    );
);
s = lenblack!;
for (i = 1, #vblack,
    s = s / vblack[i][1]! * vblack[i][2];
);
print(s % p);
}
