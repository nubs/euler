class Integer
	def factorial
		(1..self).inject(1) {|f, i| f*i }
	end
end

count = 0
23.upto(100) {|n| 1.upto(n) {|r| count += 1 if n.factorial / (r.factorial * (n-r).factorial) > 1_000_000 } }
puts count
