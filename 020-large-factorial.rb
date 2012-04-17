class Array
	def sum
		inject(0) {|sum, a| sum + a.to_i }
	end
end

class Integer
	def factorial
		(1..self).inject(1) {|f, i| f*i }
	end
end

puts (100.factorial).to_s.split(//).sum
