#require "rational"
#
#def iter(n)
#	return Rational(1,2) if n == 1
#	return 1.to_r / (2.to_r + iter(n-1))
#end
#
#puts (1..1000).to_a.collect {|i| 1.to_r + iter(i) }.select {|i| i.numerator.to_s.length > i.denominator.to_s.length }.length

bot,top,count = 2,3,0
1.upto(1000) {
	count += 1 if top.to_s.length > bot.to_s.length
	bot,top = bot+top, 2*bot+top
}
puts count
