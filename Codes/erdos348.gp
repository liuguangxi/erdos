{
R = 7; G = 19; B = 19;
M = 10^9+7;
s = (R + G + B)! / (R! * G! * B!);
ans = s % M;
print(ans);
}
