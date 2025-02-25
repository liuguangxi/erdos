/*
f(n) -> OEIS A030102 : Base-3 reversal of n (written in base 10)
*/


f(n) = fromdigits(Vecrev(digits(n, 3)), 3);


{
K = 30;

Vg = List();
x = 40; while (x <= 3^K, listput(Vg, x); x *= 3);
Vg = Set(Vg);

for (it = 1, 6,
    Vg2 = List(); lv = #Vg;
    for (i = 1, lv,
        x = Vg[i];
        x++; if (x % 3 == 0, next);
        x = f(x);
        while (x <= 3^K, listput(Vg2, x); x *= 3);
    );
    Vg = Set(Vg2);
);
ans = #Vg;
print(ans);
}
