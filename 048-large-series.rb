class Array
	def sum
		inject(0) {|sum, a| sum + a.to_i }
	end
end

puts (1..1000).to_a.collect {|i| i**i}.sum
