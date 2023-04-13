/*
Let f(n, m) is number of ways of making towers with n blocks and minimum height is m
(1) n < m, f(n, m) = 0
(2) n = m, f(n, m) = 1
(1) n > m, f(n, m) = 1 + sum(k = m, n - 1, f(n - k, k + 1))
*/


f(n, m) = {
    my(s);
    if (n < m, return(0));
    if (n == m, return(1));
    if (mapisdefined(Mapf, [n, m]), return(mapget(Mapf, [n, m])));
    s = 1 + sum(k = m, n - 1, f(n - k, k + 1));
    mapput(Mapf, [n, m], s);
    return(s);
}


{
N = 196;
Mapf = Map();
ans = f(N, 1);
print(ans);
}
