{
N = 9974;
s = 0;
for (a = 1, N \ 3,
    for (b = a, (N - a) \ 2,
        c = N - a - b;
        if (a < b && b < c,
            s += 6,
            if (a == b && b == c, s++, s += 3);
        );
    );
);
print(s);
}
