#See http://mathworld.wolfram.com/Prime-GeneratingPolynomial.html :
#If p(x) is prime generating for 0<=x<=n then so is p(n-x).
#So, for b<=1000, x<=sqrt(1000) => x=31
#p(n-31) = (n - 31)**2 + n - 31 + 41 = n**2 - 61n + 971
#-61 * 971 = -59231
