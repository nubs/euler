class String
	def sum
		(0..length-1).inject(0) {|sum, a| sum + self[a] - 64 }
	end
end

i, current, triangle_numbers = 0, 0, []
triangle_numbers << current until (current += (i += 1)) > 364

p IO.read("input/042.txt").delete('"').split(',').select {|w| triangle_numbers.include?(w.sum) }.length
