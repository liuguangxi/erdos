/*
sum(k = 0, inf, 1/((4*k+1)*(4*k+2)*(4*k+3)*(4*k+4))) = (log(64)-Pi)/24
*/


{
p = (log(64)-Pi)/24;
q = binomial(2*2, 2) / binomial(2, 2);
ans = floor(p * q * 10^20);
print(ans);
}
