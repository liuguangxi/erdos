/*
n must be multiple of 4
*/


{
N = 10^123;
M = 1000000007;
kmax = N \ 4;
s = 4 * kmax * (kmax + 1) / 2;
s %= M;
print(s);
}
