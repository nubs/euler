def spiral_corners(n)
	topright = n**2
	topleft = topright - n + 1
	bottomleft = topleft - n + 1
	bottomright = bottomleft - n + 1
	topright + topleft + bottomleft + bottomright
end
sum = 1
(3..ARGV[0].to_i).step(2) {|i| sum += spiral_corners(i) }
puts sum
