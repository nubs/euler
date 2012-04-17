class Integer
	def factorial
		(1..self).inject(1) {|f, i| f*i }
	end

	def prime?
		return true if self == 2
		return false if (self%2).zero?
		(3..Math.sqrt(self).floor).step(2) {|i| return false if (self%i).zero? }
		return true
	end
end

class Array
	def permutation(n)
		return [first] if length < 2
		bucket_size = (length-1).factorial
		target_bucket = n/bucket_size
		[self[target_bucket], (self - [self[target_bucket]]).permutation(n - bucket_size*target_bucket)].flatten
	end
end
elements = (1..7).to_a
p (0..elements.length.factorial).collect {|i| j = elements.permutation(i).join.to_i; j.prime? ? j : nil }.compact.max
