p (9..9999).collect {|i| s,j = '',1 ; (s << (i*j).to_s;j+=1) until s.length > 8; s }.select {|i| i.length == 9 && i.delete('0').split('').uniq.length == 9 }.collect {|i| i.to_i }.max
