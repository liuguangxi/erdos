/*
sum(i = 1, p-1, f(i,p))
= sum(d = 2, p-1, d * sum(i = 1, d-1, [d|(i*p+1)]))
= sum(d = 2, p-1, d)
= p*(p-1)/2-1
*/


{
p = 1000000007;
s = p*(p-1)/2-1;
print(s);
}
