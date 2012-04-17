#prod=1
#1.upto(7830457) {|i| prod*=2; prod = prod.to_s[-11,prod.to_s.length].to_i if prod.to_s.length > 11 }
#p prod*28433+1
prod=1
1.upto(7830457) {|i| prod = prod*2%100000000000 }
p prod*28433+1
