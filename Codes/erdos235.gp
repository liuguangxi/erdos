/*
15121 is prime
15121 | (15120!+1)
k | (15120!+k) for k > 1
*/


{
s = 15121;    \\ k = 1
for (k = 2, 15120,
    s += factor(k)[1,1];
);
print(s);
}
