class Integer
	def primefactors
		i,num,factors = 2,self,[]
		while i <= num
			f = []
			(f += [i]; num /= i) while (num%i).zero?
			i += 1
			factors += [f.join('x')] if f.length > 0
		end
		factors
	end
end
LEN = 4
i, factors = 134000, (2..LEN+1).collect {|i| i.primefactors }

factors = factors[1,factors.length] + [(i+=1).primefactors] while !factors.all? {|f| f.length == LEN } && factors.inject([]) {|u,f| u | f }.length != factors.length*LEN
p i-LEN+1
