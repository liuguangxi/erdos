SG(n) = {
    my(Tab = [0, 1, 2, 2, 3]);
    while (n >= 5, n \= 10);
    return(Tab[n + 1]);
}


{
sg_xy = bitxor(SG(2^60), SG(2^61));
s = 0;
for (z = 0, 12345,
    sg_z = SG(z);
    if (bitxor(sg_xy, sg_z) != 0, s++);
);
prob = s / 12346;
[u, v] = [numerator(prob), denominator(prob)];
print(prob);
print(u + v);
}
