i=0
p IO.readlines("input/099.txt").collect {|l| a,b = l.split(','); [i+=1, Math.log(a.to_i)*b.to_i] }.inject([0,0]) {|max,i| i[1] > max[1] ? i : max }
