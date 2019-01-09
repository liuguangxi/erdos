log10(n) = log(n)/log(10);


{
/*
In mupad
x := min(numlib::invphi(10^8))
get 100064101
*/
x = 100064101;

/*
http://oeis.org/A034886
ceiling(log(2*pi*n)/2+n*(log(n/e))), where log is the logarithm base 10
*/
ans = ceil(log10(2*Pi*x)/2 + x*log10(x/exp(1)));
print(ans);
}
