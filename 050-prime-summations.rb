class Integer
	def primes_below
		primes = (2..self).to_a
		2.upto(Math.sqrt(self).floor) {|i| primes.delete_if {|p| p != i && p.modulo(i).zero? } if primes.include?(i) }
		primes
	end

	def prime?
		return true if self == 2
		return false if (self%2).zero?
		(3..Math.sqrt(self).floor).step(2) {|i| return false if (self%i).zero? }
		return true
	end
end

class Array
	def sum
		inject(0) {|sum, a| sum + a }
	end
end

primes = 4000.primes_below
max = [953,21]
0.upto(primes.length-21) {|i| (max[1]+1).upto(primes.length-i) {|l| s=primes[i,l].sum; break if s > 1000000;  max = [s,l] if s.prime? } }
p max[0]
