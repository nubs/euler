#def numroutes(rows, cols)
#	return (cols == 2 ? rows + 1 : numroutes(rows, cols-1)) + (rows == 2 ? cols + 1 : numroutes(rows-1, cols))
#end
#puts numroutes(ARGV[0].to_i, ARGV[0].to_i)

#def pascal(row, col)
#	(1..col).inject(1) {|v, c| v * (row + 1 - c) / c }
#end
#puts pascal(2*ARGV[0].to_i, ARGV[0].to_i)

class Integer
	def factorial
		(1..self).inject(1) {|f, i| f*i }
	end
end
puts (2*ARGV[0].to_i).factorial/(ARGV[0].to_i.factorial ** 2)
