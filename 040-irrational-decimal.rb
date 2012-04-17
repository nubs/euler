i,s = 0,''
s += (i+=1).to_s until s.length > 999999
puts s[0,1].to_i * s[9,1].to_i * s[99,1].to_i * s[999,1].to_i * s[9999,1].to_i * s[99999,1].to_i * s[999999,1].to_i
