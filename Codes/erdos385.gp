/*
Hook Length Formula
f = N! / ((N/2+1)*N/2*N/2*(N/2-1)*...*3*2*2*1)
    N! / ((N/2+1) * ((N/2)!)^2)
*/


{
M = 1000000007;
N = 2*10^6;;
sn2 = prod(i = 1, N/2, Mod(i, M));
sn = prod(i = 1, N, Mod(i, M));
s = sn / ((N/2+1) * sn2^2);
ans = lift(s);
print(ans);
}
