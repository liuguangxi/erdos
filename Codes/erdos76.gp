﻿/*
s^2 <= 16 => 0 <= s <= 4
4*sqrt((16-s^2)/4) + s >= 8 =>
0 <= s <= 16/5
*/


{
M = 16/5;
ans = sigma(M * 30, 0);
print(ans);
}