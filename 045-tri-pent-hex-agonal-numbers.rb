i,j=286,0
(i+=1; j=i*(i+1)/2) until ((1+Math.sqrt(1+24*j))/6 % 1).zero? && ((1+Math.sqrt(1+8*j))/4 % 1).zero?
puts i,j
