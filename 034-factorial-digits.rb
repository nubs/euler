#FACTORIALS = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
#sum=0
#10.upto(50000) {|i| sum += i if i == i.to_s.split('').inject(0) {|s, a| s + FACTORIALS[a.to_i] } }
#puts sum

FACTORIALS = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
sum=0
10.upto(FACTORIALS[9]*7) {|i| j,s=i,0; (s+=FACTORIALS[j%10]; j/=10) while j>0; sum += i if s == i }
puts sum
