class Array
	def sum
		inject(0) {|sum, a| sum + a.to_i }
	end
end

puts (2**1000).to_s.split(//).sum
