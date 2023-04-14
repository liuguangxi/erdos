/*
V1 V2
V4 V3
=>
V1 + V3 = V2 + V4
*/


{
K = 1000;
s = 0;
for (x = 2, 2*K,
    if (x <= K + 1, c = x - 1, c = 2*K - x + 1);
    s += c^2;
);
s /= K^4;
p = numerator(s);
print(p);
}
