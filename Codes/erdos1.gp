D(n) = {
    my(x, v, p, res = n^2);
    x = vector(n, i, i);
    for (k = 2^n, 2^(n+1)-1,
        v = vector(n, i, 1) - 2*digits(k, 2)[2..n+1];
        p = x*v~;
        if (p >= 0 && p < res, res = p);
    );
    return(res);
}


{
/*
D(n) = 1, 1, 0, 0, 1, 1, 0, 0,...
*/
N = 19216812112;
s = N \ 4 * 2;
if (N % 4 == 1, s += 1, if (N % 4 >= 2, s += 2));
print(s);
}
