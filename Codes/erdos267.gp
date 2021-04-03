/*
F(p) = eulerphi(10^p)/2 = 2*10^(p-1)
*/


{
M = 10^9+7;
N = 10^10;
s = 2 * (Mod(10, M)^N - 1) / (10 - 1);
print(lift(s));
}
