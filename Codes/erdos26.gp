/*
https://math.stackexchange.com/questions/152880/how-many-irreducible-polynomials-of-degree-n-exist-over-mathbbf-p
*/


{
n = 59;
p = 4113101149215104800030529537915953170486139623539759933135949994882770404074832568499;
x = sumdiv(n, d, moebius(d)*p^(n/d))/n;
ans = x % 1000000007;
print(ans);
}
