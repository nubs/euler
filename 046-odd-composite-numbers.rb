class Integer
	def prime?
		return true if self == 2
		return false if (self%2).zero?
		(3..Math.sqrt(self).floor).step(2) {|i| return false if (self%i).zero? }
		return true
	end
end

i,prime = 5,true
while prime
	i,prime = i+2, false
	(prime=true; next) if i.prime?
	1.upto(Math.sqrt(i/2)) {|j| (prime=true; break) if (i-j*j*2).prime? }
end
p i
