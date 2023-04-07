f(n) = {
    my(nsqrt, smalls1, larges1, smalls3, larges3, pcnt, q, imax, d);

    nsqrt = sqrtint(n);
    smalls1 = vector(nsqrt, i, (i-1)\4);        \\ printpi1(i)
    larges1 = vector(nsqrt, i, (n\i-1)\4);      \\ printpi1(n\i)
    smalls3 = vector(nsqrt, i, (i-3)\4+1);      \\ printpi3(i)
    larges3 = vector(nsqrt, i, (n\i-3)\4+1);    \\ printpi3(n\i)

    forprime (p = 3, nsqrt,
        q = p * p;
        imax = min(nsqrt, n\q);
        for (i = 1, imax,
            d = i * p;
            if (p % 4 == 1,
                if (d <= nsqrt,
                    larges1[i] -= (larges1[d] - smalls1[p-1]); larges3[i] -= (larges3[d] - smalls3[p-1]),
                    larges1[i] -= (smalls1[n\d] - smalls1[p-1]); larges3[i] -= (smalls3[n\d] - smalls3[p-1]);
                );
                ,
                if (d <= nsqrt,
                    larges1[i] -= (larges3[d] - smalls3[p-1]); larges3[i] -= (larges1[d] - smalls1[p-1]),
                    larges1[i] -= (smalls3[n\d] - smalls3[p-1]); larges3[i] -= (smalls1[n\d] - smalls1[p-1]);
                );
            );
        );
        forstep (i = nsqrt, q, -1,
            if (p % 4 == 1,
                smalls1[i] -= (smalls1[i\p] - smalls1[p-1]); smalls3[i] -= (smalls3[i\p] - smalls3[p-1]),
                smalls1[i] -= (smalls3[i\p] - smalls3[p-1]); smalls3[i] -= (smalls1[i\p] - smalls1[p-1]);
            );
        );
    );

    return(larges3[1]);
}


{
N1 = 8589934592;
N2 = 17179869184;
ans = f(N2) - f(N1 - 1);
print(ans);
}
