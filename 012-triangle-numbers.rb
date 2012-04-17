class Integer
	def numfactors
		(1..Math.sqrt(self).floor).to_a.select {|i| self.modulo(i).zero? }.length * 2
	end
end
i, sum = 1, 1
sum += (i += 1) until sum.numfactors > 500
p sum
