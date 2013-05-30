class Integer
	def prime?
		return true if self == 2
		return false if (self%2).zero?
		(3..Math.sqrt(self).floor).step(2) {|i| return false if (self%i).zero? }
		return true
	end
end

i=56003
while true
  if i.prime?
    s = i.to_s
    digits = s.split(//)
    repeated_digits = digits.group_by {|i| i }.select {|k, v| v.length > 1 }
    repeated_digits.each {|repeated_digit, garbage|
      replaced_numbers = (0..9).map {|replacement| s.gsub(repeated_digit.to_s, replacement.to_s).to_i }
      replaced_primes = replaced_numbers.select {|n| n.prime? && n.to_s.length == s.length }
      if replaced_primes.length > 7
        p replaced_primes
        exit
      end
    }
  end

  i+=2
end
