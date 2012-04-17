#def summations(n, max=nil)
#	return [[1]] if n==1
#	res,max = [], max.nil? ? n-1 : max
#	(max).downto(1) {|i| res << summations(n-i, [n-i,i].min).collect {|j| ([i].flatten + j).flatten } }
#	res
#end
#
#p summations(6).inspect.split('],').length
#
#N=40
#def summations(n, max)
#	return 1 if max == 1
#	sum = 0
#	max.downto(1) {|i| sum += 1 if (n-i).zero?; sum += summations(n-i, i) if n-i > 0 }
#	sum
#end
#
#p summations(N, N-1)
#
N=100
count = Array.new(N+1, 0)
count[0] = 1
1.upto(N-1) {|i| i.upto(N) {|j| count[j] += count[j-i] } }
p count[N]
