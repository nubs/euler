#n, count = 1, [0,1]
#until ((count[n]+1)%1000).zero?
#	n+=1
#	count = Array.new(n+1, 0)
#	count[0] = 1
#	1.upto(n-1) {|i| i.upto(n) {|j| count[j] += count[j-i] } }
#end
#p n, count[n]+1

@ap = [1]
def pn(n)
	return 0 if n<0
	return @ap[n] if @ap[n] && @ap[n] > 0

	p=0
	1.upto(Math.sqrt(n)) {|k|
		p1 = pn(n-k*(3*k-1)/2)
		p2 = pn(n-k*(3*k+1)/2)
		p = ( (k%2).zero? ? p-p1-p2 : p+p1+p2 )
	}

	@ap[n] = p
end

n=1
n+=1 until (pn(n)%1000000).zero?
p n
