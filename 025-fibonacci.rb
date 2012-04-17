a,b,c = 1,1,2
a,b,c = b,a+b,c+1 until b.to_s.length > 999
puts c
