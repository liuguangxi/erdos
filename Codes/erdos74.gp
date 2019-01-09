/*
n! = 1*2*3*...*k*(k+1)*...*n = (k+1)*...*n*k!
with (n+1-k) consecutive integers and n+1 = k! =>
n = (2014^2015+1)!-1
*/


{
x = 38980715857 - 1;
ans = x % 8037517;
print(ans);
}
