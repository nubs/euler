#require "rational"
#count=0
#1.upto(10000) {|i| ((i/3.0+1).floor).upto((i/2.0-1).ceil) {|j| count+=1 if Rational(j,i) == Rational.new!(j,i)} }
#puts count
class Integer
	def gcd(b)
		a=self
		while b!=0
			a%=b
			return b if a==0
			b%=a
		end
		a
	end
end
count=0
1.upto(10000) {|i| ((i/3.0+1).floor).upto((i/2.0-1).ceil) {|j| count+=1 if i.gcd(j) == 1} }
puts count
