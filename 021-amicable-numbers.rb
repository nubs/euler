class Array
	def sum
		inject(0) {|sum, a| sum + a.to_i }
	end
end

class Integer
	def factors
		(1..Math.sqrt(self).floor).to_a.select {|i| self.modulo(i).zero? }.collect {|i| [i, self/i] }.flatten
	end
end

amicable_numbers = []
factor_sums = (0..9999).to_a.collect {|i| (i.factors - [i]).sum }
factor_sums.each_index {|i| amicable_numbers << [i, factor_sums[i]] if i == factor_sums[factor_sums[i]] && i != factor_sums[i] && i < factor_sums[i] }
p amicable_numbers.flatten.sum
