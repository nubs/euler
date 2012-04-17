class Array
	def sum
		inject(0) {|sum, a| sum + a }
	end
end

class String
	def sum
		split(//).inject(0) {|sum, a| sum + a.to_i**5 }
	end
end

p (0..179999).to_a.select {|i| i.to_s.sum == i }.sum
