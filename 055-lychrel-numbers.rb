lychrel_numbers = []
1.upto(9999) {|i| num,is_palindromic=i,false; 1.upto(50) {|j| num += num.to_s.reverse.to_i; (is_palindromic=true; break) if num.to_s.reverse == num.to_s }; lychrel_numbers << i if !is_palindromic }
p lychrel_numbers.length
