class Integer
	def prime?
		return false if (self%2).zero?
		(3..Math.sqrt(self).floor).step(2) {|i| return false if (self%i).zero? }
		return true
	end
end

def spiral_corners(n)
	topright = n**2
	topleft = n**2 - n + 1
	bottomleft = n**2 - 2*n + 2
	bottomright = n**2 - 3*n + 3
	[topright,topleft,bottomleft,bottomright].select {|i| i.prime? }.length
end
numprimes,numdiagonals,i=8,13,9
until numprimes.to_f/numdiagonals < 0.1
	numprimes += spiral_corners(i)
	numdiagonals += 4
	i+=2
	puts "#{i} : #{numprimes.to_f/numdiagonals}" if (i%99).zero?
end
puts i-2
