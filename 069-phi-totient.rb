#class Integer
#	def primefactors
#		(2..Math.sqrt(self).floor).to_a.select {|i| (self%i).zero? && i.prime? }
#	end
#
#	def totient
#		(primefactors.collect {|i| 1-1.0/i }.inject(1) {|prod,i| prod*i }*self).to_i
#	end
#
#	def prime?
#		return true if self == 2
#		return false if (self%2).zero?
#		(3..Math.sqrt(self).floor).step(2) {|i| return false if (self%i).zero? }
#		return true
#	end
#end
#
#puts (1..1_000_000).inject(0) {|max, i| i.to_f/i.totient > max[1] ? [i,i.to_f/i.totient] : max }

class Integer
	def prime?
		return true if self == 2
		return false if (self%2).zero?
		(3..Math.sqrt(self).floor).step(2) {|i| return false if (self%i).zero? }
		return true
	end
end

i,prod=2,1
begin
	prod *= i
	next until (i+=1).prime?
end while prod*i < 1_000_000
puts prod
