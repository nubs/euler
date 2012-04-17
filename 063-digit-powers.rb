count=0
1.upto(21) {|p| 1.upto(9) {|b| count +=1 if (b**p).to_s.length == p } }
puts count
