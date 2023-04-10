
/*
{
N = 16;
Mask = vector(N, i, 2^(i-1));
sg = vector(2^N-1);
for (x = 1, 2^N-1,
    v = List();
    for (i = 1, N,
        if (bitand(x, Mask[i]) == 0, next);
        xx = x;
        for (j = 1, i,
            if (bitand(xx, Mask[j]) != 0 && i % j == 0, xx -= Mask[j]);
        );
        if (xx == 0, listput(v, 0), listput(v, sg[xx]));
    );
    v = Set(v); y = 0;
    for (i = 1, #v,
        if (v[i] == y, y = v[i] + 1, break);
    );
    sg[x] = y;
);
for (i = 1, N,
    printf("[1 .. %d] : %d\n", i, sg[2^i-1]);
);
}
*/


{
\\ sg[2^i-1] > 0 => x = 1
x = 1;
ans = x * 1000000000000;
print(ans);
}
