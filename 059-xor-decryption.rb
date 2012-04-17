class String
	def xor(s)
		s = (s*(length/s.length+1))[0,length]
		res = ''
		0.upto(length-1) {|i| res << (self[i]^s[i]).chr }
		res
	end

	def sum
		(0..length-1).inject(0) {|sum, a| sum + self[a] }
	end
end
encrypted = IO.read("input/059.txt").split(',').collect {|i| i.to_i.chr }.join
("aaa".."zzz").each {|a| (puts "#{a} : #{encrypted.xor(a).sum} : #{encrypted.xor(a)}"; break) if encrypted.xor(a) =~ / the /i }
