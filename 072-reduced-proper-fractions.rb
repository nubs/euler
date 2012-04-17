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

count = 0
2.upto(10000) {|d| 1.upto(d-1) {|n| count+=1 if d.gcd(n) == 1 } }
p count
