/*
when gcd(3, m) = 1, 3^k mod m = 3^(k mod phi(m)) mod m
*/


{
m = 1073741824;
vm = List(m);
while (m > 1, m = eulerphi(m); listput(vm, m));
vm = Vecrev(vm);

x = 0;
for (i = 2, #vm,
    m = vm[i];
    x = lift(Mod(3, m)^x);
);
ans = x;
print(ans);
}
