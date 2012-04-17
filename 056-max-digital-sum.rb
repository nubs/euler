class String
	def sum
		(0..length-1).inject(0) {|sum, a| sum + self[a,1].to_i }
	end
end

max=0
2.upto(99) {|i| 2.upto(99) {|j| max = [max,(i**j).to_s.sum].max } }
puts max
