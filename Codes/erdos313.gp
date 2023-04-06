/*
E(r) = 1 + Integrate(3*x^2*E(x), {x, r, 1}), E(1) = 1
=> E(r) = exp(1-r^3)
Ans = E(0)
*/


{
Ans = exp(1-0^3);
res = floor(Ans * 10^5);
print(res);
}
