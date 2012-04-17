#require 'bigdecimal'
#decimals = (['0.0'] + (1..1000).collect {|i| (BigDecimal.new('1',1000) / BigDecimal.new("#{i}",1000)).to_s('F') })#.collect {|i| i[2,i.length] }
#puts decimals.join("\n")

p (2..1000).collect {|n|
	r=r0=(1..n).inject(1) {|t,i| (t*10)%n }
	len=0
	begin
		r = (r*10)%n
		len+=1
	end while r!=r0
	[n,len]
}.inject([0,0]) {|max,i| i[1] > max[1] ? i : max }
