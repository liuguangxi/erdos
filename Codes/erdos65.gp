/*
https://en.wikipedia.org/wiki/Partition_(number_theory)
The problem is equivalent to:
partitions of 2500 into <= 2500 parts,
which is equal to the number of partitions of 2500 in which the largest part has size <= 2500
generating function for such partitions is
f(x) = (1+x+x^2+...)*(1+x^2+x^3+...)*...*(1+x^2500+...)
*/


{
f = prod(i = 1, 2500, Mod(1/(1-x^i) + O(x^2501), 1000000007));
ans = lift(polcoeff(f, 2500));
print(ans);
}
