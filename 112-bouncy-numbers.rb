class Integer
	def bouncy?
		dec,inc = false,false
		last,num = self%10,self/10
		while !num.zero?
			cur,num = num%10,num/10
			inc = true if cur < last
			dec = true if cur > last
			return true if inc && dec
			last = cur
		end
		false
	end
end
bouncy,total=0,1
bouncy += 1 if (total+=1).bouncy? while bouncy.to_f/total < 0.99
p total
