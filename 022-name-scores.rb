class Array
	def sum
		inject(0) {|sum, a| sum + a }
	end
end

class String
	def sum
		(0..length-1).inject(0) {|sum, a| sum + self[a] - 64 }
	end
end

names = IO.read("input/022.txt").delete('"').split(',').sort
scores = []
names.each_index {|i| scores << (i+1) * names[i].sum }
p scores.sum
