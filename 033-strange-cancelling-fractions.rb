require "rational"

fractions = []
11.upto(99) {|d|
	next if (d%10).zero?
	11.upto(d-1) {|n|
		next if (n%10).zero?
		r = Rational(n,d)
		next if r == Rational.new!(n,d) || !((n.to_s[0,1] == d.to_s[0,1] && r == Rational(n.to_s[1,1].to_i, d.to_s[1,1].to_i)) || (n.to_s[0,1] == d.to_s[1,1] && r == Rational(n.to_s[1,1].to_i, d.to_s[0,1].to_i)) || (n.to_s[1,1] == d.to_s[0,1] && r == Rational(n.to_s[0,1].to_i, d.to_s[1,1].to_i)) || (n.to_s[1,1] == d.to_s[1,1] && r == Rational(n.to_s[0,1].to_i, d.to_s[0,1].to_i)))
		fractions << r
	}
}
p fractions.inject(Rational(1,1)) {|prod, i| prod * i }.denominator
