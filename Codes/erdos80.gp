/*
Person who goes first wins if and only if
a1 xor a2 xor a3 xor a4 != 0
*/


{
s = 0;
for (a1 = 1, 9, for (a2 = 1, 9, for (a3 = 1, 9, for (a4 = 1, 9,
    if (bitxor(bitxor(a1, a2), bitxor(a3, a4)) != 0, s++);
))));
print(s);
}
