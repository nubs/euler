triangle = IO.readlines("input/067.txt").collect {|l| l.split.collect {|i| i.to_i } }
1.upto(triangle.length-1) {|i|
	triangle[i].each_index {|j|
		triangle[i][j] += ( j == 0 ? triangle[i-1][j] : (j == triangle[i].length-1 ? triangle[i-1][j-1] : [triangle[i-1][j-1], triangle[i-1][j]].max))
	}
}
p triangle[triangle.length-1].max
