class Integer
	def primes_below
		primes = (2..self).to_a
		2.upto(Math.sqrt(self).floor) {|i| primes.delete_if {|p| p != i && p.modulo(i).zero? } if primes.include?(i) }
		primes
	end
end

class Array
	def sum
		inject(0) {|sum, a| sum + a }
	end
end

puts ARGV[0].to_i.primes_below.sum
