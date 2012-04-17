i=1
i+=1 until [2*i,3*i,4*i,5*i,6*i].all? {|x| x.to_s.split('').sort == i.to_s.split('').sort }
puts i
