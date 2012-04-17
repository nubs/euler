p (17..999_999).to_a.inject([1, 1]) {|s, i|
	sequence, j = Array.new, i
	sequence.push(j = ( j.modulo(2).zero? ? j/2 : 3*j + 1 )) until j == 16
	sequence.length > s[0] ? [sequence.length, i] : s
}
