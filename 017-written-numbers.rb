class Array
	def sum
		inject(0) {|sum, a| sum + a }
	end
end

ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
p (1..1000).to_a.collect {|i| (i < 10 ? ones[i] : (i < 20 ? teens[i-10] : i < 100 ? tens[i/10] + ones[i-i/10*10] : ( i < 1000 ? ones[i/100] + "hundred" + (i-i/100*100 > 0 ? "and" : "") + (i-i/100*100 < 10 ? ones[i-i/100*100] : (i-i/100*100 < 20 ? teens[i-i/100*100-10] : tens[(i-i/100*100)/10] + ones[i-i/100*100-(i-i/100*100)/10*10] )) : "onethousand" ))).length }.sum
