ispalin(n) = {
    my(x);
    x = digits(n, 2);
    if (Vecrev(x) != x, return(0));
    x = digits(n, 8);
    if (Vecrev(x) != x, return(0), return(1));
}


printpalin(n) = {
    my(strd, x, strx);
    strd = Vec("0123456789abcdef");
    printf("%d (10)\t", n);
    x = digits(n, 2); strx = concat(vector(#x, i, strd[x[i]+1]));
    printf("    %s (2)", strx);
    x = digits(n, 8); strx = concat(vector(#x, i, strd[x[i]+1]));
    printf("    %s (8)", strx);
    x = digits(n, 16); strx = concat(vector(#x, i, strd[x[i]+1]));
    printf("    %s (16)\n", strx);
}


{
s = 0;

/* 1 & 2 digits of palindromes in hexadecimal base */
for (d1 = 1, 15,
    n = d1;
    if (ispalin(n), s += n; printpalin(n));
    n = fromdigits([d1, d1], 16);
    if (ispalin(n), s += n; printpalin(n));
);

/* 3 & 4 digits of palindromes in hexadecimal base */
for (d1 = 1, 15, for (d2 = 0, 15,
    n = fromdigits([d1, d2, d1], 16);
    if (ispalin(n), s += n; printpalin(n));
    n = fromdigits([d1, d2, d2, d1], 16);
    if (ispalin(n), s += n; printpalin(n));
));

/* 5 & 6 digits of palindromes in hexadecimal base */
for (d1 = 1, 15, for (d2 = 0, 15, for (d3 = 0, 15,
    n = fromdigits([d1, d2, d3, d2, d1], 16);
    if (ispalin(n), s += n; printpalin(n));
    n = fromdigits([d1, d2, d3, d3, d2, d1], 16);
    if (ispalin(n), s += n; printpalin(n));
)));

/* 7 & 8 digits of palindromes in hexadecimal base */
for (d1 = 1, 15, for (d2 = 0, 15, for (d3 = 0, 15, for (d4 = 0, 15,
    n = fromdigits([d1, d2, d3, d4, d3, d2, d1], 16);
    if (ispalin(n), s += n; printpalin(n));
    n = fromdigits([d1, d2, d3, d4, d4, d3, d2, d1], 16);
    if (n <= 1000000000 && ispalin(n), s += n; printpalin(n));
))));

printf("\nsum = %d\n", s);
}
