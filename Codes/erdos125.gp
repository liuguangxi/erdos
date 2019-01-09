h(p, q) = {
    my(s);
    if (p <= q, return(0));
    if (q == 0, return(1));
    if (mapisdefined(M, [p, q]),
        return(mapget(M, [p, q])),
        s = h(p-1, q) + h(p, q-1);
        mapput(M, [p, q], s);
        return(s);
    );
}


{
M = Map();
s = h(200, 100);
ans = s*201!*101!/300!;
print(ans);
}
