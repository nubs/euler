class Integer
	def primes_below
		primes = (2..self).to_a
		#2.upto(Math.sqrt(self).ceil) {|i| primes.delete_if {|p| (p != i && (p%i).zero?) || (p.to_s.split(//) & ["2","4","5","6","8"]).length > 0 } if primes.include?(i) }
		2.upto(Math.sqrt(self).ceil) {|i| primes.delete_if {|p| p != i && (p%i).zero? } if primes.include?(i) }
		primes + [2,5]
	end
	
	def prime?
		2.upto(Math.sqrt(self)) {|i| return false if (self%i).zero? }
		return true
	end

	def circular?
		to_s.rotations.all? {|i| i.to_i.prime? }
	end
end

class String
	def rotations
		(0..length-1).to_a.collect {|i| self[i,length] + self[0,i] }
	end
end

class Array
	def sum
		inject(0) {|sum, a| sum + a }
	end
end

puts ARGV[0].to_i.primes_below.select {|i| i.to_s.rotations.all? {|i| i.to_i.prime? } }.length
