class Array
	def sum
		inject(0) {|sum, a| sum + a.to_i }
	end
end

class Integer
	def proper_divisors_sum
		(1..Math.sqrt(self).floor).to_a.inject(0) {|sum, i| self.modulo(i).zero? ? sum + (i == self/i ? i : i + self/i) : sum } - self
	end
end
abundant_numbers = (1..20161).to_a.select {|i| i < i.proper_divisors_sum }
abundant_sums = []
abundant_numbers.each_index {|i| i.upto(abundant_numbers.length-1) {|j| abundant_sums << abundant_numbers[i] + abundant_numbers[j] } }
p ((1..20161).to_a - abundant_sums).sum
