sums = (0..1000).to_a.collect {|i| [i,0] }
1.upto(999) {|a| 1.upto(999) {|b| c=0; sums[a+b+c][1]+=1 if ((c=Math.sqrt(a*a + b*b)) % 1).zero? && a+b+c < 1000 } }
puts sums.inject([0,0]) {|max,i| i[1] > max[1] ? i : max }
