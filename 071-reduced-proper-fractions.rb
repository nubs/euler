#min = [0,1,1]
#999_990.upto(1_000_000) {|d| p d; next if d%7==0; 1.upto((3.0*d/7)) {|n| min = [n,d,3.0/7 - n.to_f/d] if 3.0/7 - n.to_f/d < min[2] } }
#p min
puts 1_000_000*3/7
