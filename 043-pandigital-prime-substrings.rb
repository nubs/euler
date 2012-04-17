#class Integer
#	def factorial
#		(1..self).inject(1) {|f, i| f*i }
#	end
#end
#
#class Array
#	def permutation(n)
#		return [first] if length < 2
#		bucket_size = (length-1).factorial
#		target_bucket = n/bucket_size
#		[self[target_bucket], (self - [self[target_bucket]]).permutation(n - bucket_size*target_bucket)].flatten
#	end
#
#	def sum
#		inject(0) {|sum, a| sum + a }
#	end
#end
#PRIMES = [0,2,3,5,7,11,13,17]
#elements = (0..9).to_a
#p elements.length.factorial
#p (0..elements.length.factorial-1).collect {|i| p i if (i%10000).zero?; j = elements.permutation(i); (!(j[0].zero?) && (1..7).all? {|k| (j[k,3].join.to_i%PRIMES[k]).zero? } ? j.join.to_i : nil) }.compact.sum

j,nums = 17, []
(nums << (j<100 ? '0' : '') + j.to_s if j.to_s.split('').uniq.length == j.to_s.split('').length; j+=17) while j < 1000
[13,11,7,5,3,2,1].each {|p| nums = nums.collect {|n| ('0'..'9').collect {|d| (!(n.split('').include?(d)) && ((d+n[0,2]).to_i%p).zero?) ? d+n : nil }.compact }.flatten }
p nums.inject(0) {|sum, a| sum + a.to_i }
