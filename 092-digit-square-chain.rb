class Integer
	def square_digits
		num,sum = self, 0
		while num > 0
			num,i = num.divmod(10)
			sum += i*i
		end
		sum
	end
end

count = 0
1.upto(10_000_000) {|i| i = i.square_digits until i==1 || i==89; count+=1 if i==89 }
p count
