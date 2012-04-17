#def subdivisions(r,c)
#	count = 0
#	1.upto(r) {|a| 1.upto(c) {|b| count += (r-a+1)*(c-b+1) } }
#	count
#end
#
#N=2000000
#rows = [[0,0,N]]
#1.upto(1414) {|r|
#	c,last= 1,0
#	until (N-(cur=subdivisions(r,c))).abs > (N-last).abs
#		last=cur
#		c+=1
#	end
#	rows[r] = [r,c-1,(N-last).abs]
#}
#p rows.inject([0,0,N]) {|min, a| min[2] < a[2] ? min : a }[0,2].inject(1) {|prod, a| prod*a }
#
def subdivisions(r,c)
	r*(r+1)*c*(c+1)/4
end
N=2000000
rows = [[0,0,N]]
1.upto(1414) {|r|
	c,last= 1,0
	until (N-(cur=subdivisions(r,c))).abs > (N-last).abs
		last=cur
		c+=1
	end
	rows[r] = [r,c-1,(N-last).abs]
}
p rows.inject([0,0,N]) {|min, a| min[2] < a[2] ? min : a }[0,2].inject(1) {|prod, a| prod*a }
