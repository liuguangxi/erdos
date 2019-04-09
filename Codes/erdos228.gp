/* OEIS A036391 */

{
n = 998244353;    /* n is prime */
s = sumdiv(n - 1, d, eulerphi(d)*d);
s = (s + 1) % 1000000007;
print(s);
}
