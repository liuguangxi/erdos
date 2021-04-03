/*
sqrt(sum(i = 1, n, i^2)) > 10^9
*/


{
r = polroots(n*(n+1)*(2*n+1) - 6*(10^9)^2);
ans = ceil(real(r[1]));
print(ans);
}
