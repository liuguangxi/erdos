/*
s = Bino(M,np) - Bino(M,np-D-1)
D = L - N
np = (N2 - N + M) / 2
*/


Bino(n, r) = {
    my(s = Mod(1, 10^9+7));
    for (i = 1, r, s = s * (n + 1 - i) / i);
    return(s);
}


{
N = 123456;
M = 217127;
N2 = 172213;
L = 200000;
D = L - N;
np = (N2 - N + M) / 2;
ans = lift(Bino(M, np) - Bino(M, np - D - 1));
print(ans);
}
