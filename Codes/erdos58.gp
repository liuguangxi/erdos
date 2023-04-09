circle(n, k) = {
    my(f, p, cnt);
    f = vector(n, i, 1);
    p = 0;
    for (i = 1, n,
        cnt = 0;
        while (1,
            p++; if (p > n, p = 1);
            if (f[p] == 1, cnt++);
            if (cnt == k, f[p] = 0; break);
        );
    );
    return(p);
}


{
p = circle(330, 10);

/* q = 1 (mod n) and q = 1 (mod n-1) and ... and q = 1 (mod 2) */
n = 40;
q = lcm([1..n]) + 1;

ans = p * q % 1000000009;
print(ans);
}
