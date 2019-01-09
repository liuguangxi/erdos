dfs(k, emax, numd, n) = {
    my(p = prime(k), numd2, n2);
    for (e = 1, emax,
        numd2 = numd * (e + 1);
        n2 = n * p^e;
        if (numd2 > 300,
            printf("n = %d\n", n2); if (n2 < mind, mind = n2),
            dfs(k + 1, e, numd2, n2);
        );
    );
}


{
/* Reference: http://oeis.org/A005179 */
mind = 2^300;
dfs(1, 20, 1, 1);
print(mind);
}
