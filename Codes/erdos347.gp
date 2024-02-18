{
for (x = 1000000000, 9999999999,
    if (x % 3 == 0 && sumdigits(x) % 7 == 0,
        print(x); break;
    );
);
}
