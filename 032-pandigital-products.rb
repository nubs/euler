class Array
	def sum
		inject(0) {|sum, a| sum + a }
	end
end

products = []
1234.upto(9876) {|p| 2.upto(Math.sqrt(p)) {|a| q,m = p.divmod(a); products << p if m.zero? && "#{a}#{q}#{p}".length == 9 && "#{a}#{q}#{p}".delete('0').split('').uniq.length == 9 } }
p products.uniq.sum
