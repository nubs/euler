class Integer
	def factorial
		(1..self).inject(1) {|prod, i| prod*i }
	end

	def factorial_digits
		num,sum = self, 0
		while num > 0
			num,i = num.divmod(10)
			sum += FACTORIALS[i]
		end
		sum
	end
end

FACTORIALS = (0..9).collect {|i| i.factorial }
REPETITIONS = {0=>0, 1=>0, 2=>0, 145 => 0, 169 => 3, 871 => 2, 872 => 2, 1454 => 3, 45361 => 2, 45362 => 2, 363601 => 3}
count = 0
1.upto(1000000) {|i| l,c=0,0; (c+=1; i=i.factorial_digits; break if l==i; l=i) until REPETITIONS.keys.include?(i); count+=1 if (REPETITIONS.keys.include?(i) ? REPETITIONS[i]+c : c) == 60 }
p count
