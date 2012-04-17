class Integer
	def prime?
		return true if self == 2
		return false if (self%2).zero?
		(3..Math.sqrt(self).floor).step(2) {|i| return false if (self%i).zero? }
		return true
	end
end

(1001..10000).step(2) {|i| next if !i.prime?; 2.upto((10000-i)/2) {|j| p "#{i} #{i+j} #{i+j+j}" if (i+j).prime? && (i+j+j).prime? && i.to_s.split('').sort == (i+j).to_s.split('').sort && i.to_s.split('').sort == (i+j+j).to_s.split('').sort} }
