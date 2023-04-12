/*
Rotation and reflection symmetries are considered
Let number of A balls between two neighbor B balls are x1, x2, x3, then
x1 + x2 + x3 = 3*n and x1, x2, x3 are non-negative integers
(1) x1 = x2 = x3
x1 = x2 = x3 = n => s = 1
(2) two of xi are the same
    (a) x1 = x2 < x3 =>
    s = sum(x1 = 0, n - 1, 1) = n
    (b) x1 < x2 = x3 =>
    s = sum(x1 = 0, n - 1, [(3*(n-x1)-2)%2 = 0]) = n\2
(3) all are distinct
x1 < x2 < x3 =>
s = sum(x1 = 0, n - 1, ((3*(n-x1)-1)-(3*(n-x1)-1)%2)/2)
  = (n*(3*n+1)/2 - n\2)/2
*/


F(n) = {
    my(s);
    s = 1;
    s += n + n\2;
    s += (n*(3*n+1)/2 - n\2)/2;
    return(s);
}


{
ans = F(100000) * F(100001);
print(ans);
}
