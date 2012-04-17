class Array
	def sum
		inject(0) {|sum, a| sum + a }
	end
end

class String
	def palindrome?
		self == self.reverse
	end
end
puts (1..999999).to_a.select {|i| i.to_s.palindrome? && i.to_s(2).palindrome? }.sum
