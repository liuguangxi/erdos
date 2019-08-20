rec(k) = {
    my(va0);
    if (k == 1, va0 = 1, va0 = Va[k - 1]);
    for (x = va0 + 1, N,
        if (vd[x] > vd[va0],
            Va[k] = x;
            S++;    \\print(S, "   ", Va[1..k]);
            rec(k + 1);
        );
    );
}


{
N = 1000000;
P = 10^9 + 7;

nsqrt = sqrtint(N);
vp = primes([1, N]); lenvp = #vp;
vd = vector(N, i, i);
for (i = 2, N,
    if (vd[i] == i,
        forstep (j = i*2, N, i,
            if (vd[j] == j, vd[j] = i);
        );
    );
);
vpi = vector(N, i, vd[i] == i); vpi[1] = 0;
for (i = 2, N, vpi[i] += vpi[i - 1]);
vs = List();
for (ip = 1, lenvp,
    p = vp[ip]; if (p > nsqrt, break);
    vsp = List();
    for (j = 2, N,
        if (vd[j] == p, listput(vsp, j));
    );
    listput(vs, Vec(vsp));
);
vs = Vec(vs); lenvs = #vs;
print("init done");


/* Reference */
\\Va = vector(N); S = 0; rec(1); print("S = ", S);


s = 0;
for (k = 2, N,
    if (vd[k] == k && k > nsqrt,
        s += Mod(2, P)^(lenvp - vpi[k]),
        s += 1;
    );
);

vf = vector(N, i, Mod(1, P));
for (ip = 1, lenvp,
    if (vp[ip] > nsqrt, break);
    print("p = ", vp[ip]);
    vf2 = vector(N);
    for (i = ip, lenvs,
        p = vp[i];
        vsi = vs[i]; lenvsi = #vsi;
        t = 0;
        for (j = 1, lenvsi - 1,
            t += vf[vsi[j]];
            for (k = vsi[j] + 1, vsi[j+1],
                if (vd[k] > p, vf2[k] += t);
            );
        );
        t += vf[vsi[lenvsi]];
        for (k = vsi[lenvsi] + 1, N,
            if (vd[k] > p, vf2[k] += t);
        );
    );
    forstep (k = 3, N, 2,
        if (vd[k] == k && k > nsqrt,
            s += vf2[k] * Mod(2, P)^(lenvp - vpi[k]);
            vf2[k] = 0;
            ,
            s += vf2[k];
        );
    );
    vf = vf2;
);
printf("S(%d) = %d\n", N, lift(s));    \\ S(1000000) = 962579820
}
