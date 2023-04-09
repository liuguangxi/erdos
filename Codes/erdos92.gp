/*
From (0, 0) to circumstance (start point (c, -80)):
(x'(t))^2 + (y'(t))^2 = 9^2, x(t)/y(t) = (c + 10*t)/80
x(0) = y(0) = 0, x'(0) = 0, y'(0) = 9

From circumstance to (0, 0) (start point (c, -80)):
(x'(t))^2 + (y'(t))^2 = 9^2, x(t)/y(t) = (c + 10*t)/80
x(0) = sqrt(200)*sin(theta), y(0) = sqrt(200)*cos(theta), x'(0) = 0, y'(0) = -9
where theta = arctan(c/80)
*/


{
ans = 32;
print(ans);
}
