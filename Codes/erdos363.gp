/* expected number of times Jake says when Jake in the bar entry and m men were checked */
f(m) = {
    my(ret);
    if (Ef[m] > 0, return(Ef[m]));
    ret = 1 + (m-1)/m * g(m-1);
    Ef[m] = ret;
    return(ret);
}


/* expected number of times Jake says when man A started guessing and m men were checked */
g(m) = {
    my(ret);
    if (Eg[m] > 0, return(Eg[m]));
    ret = (N-m-1)/(N-1) * f(m) + (m-1)/(N-1) * g(m-1);
    Eg[m] = ret;
    return(ret);
}


{
M = 10^9+7;
N = 400;
Ef = Eg = vector(N);
Ef[1] = 1; Eg[1] = (N-2)/(N-1);
e = f(N);
ans = e % M;
print(ans);
}
