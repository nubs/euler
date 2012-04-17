class Integer
	def factorial
		(1..self).inject(1) {|f, i| f*i }
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
elements = (0..9).to_a
p elements.permutation(ARGV[0].to_i - 1)
