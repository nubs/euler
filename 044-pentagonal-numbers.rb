class Integer
	def p
		self*(3*self-1)/2
	end

	def p?
		((1+Math.sqrt(1+24*self))/6 % 1).zero?
	end
end


i,j=1,1
i+=1 until (1..i-1).to_a.any? {|j| (i.p + j.p).p? && (i.p - j.p).p? }
puts i.p - j.p
