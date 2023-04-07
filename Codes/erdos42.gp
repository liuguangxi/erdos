{
/*
f = prod(i = 1, 10000, Mod(1/(1-x^i) + O(x^10001), 1000000007));
ans = lift(polcoef(f, 10000));
*/

ans = numbpart(10000) % 1000000007;
print(ans);
}
