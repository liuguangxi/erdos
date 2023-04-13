f(n) = {
    my(x, s);
    x = vector(n, i, 1);
    s = 0;
    forstep (k = n, 1, -1,
        if (x[k],
            s++;
            fordiv (k, d, x[d] = 0);
        );
    );
    return(s);
}


{
N = 123456789;
ans = ceil(N/2);
print(ans);
}
