matrix = IO.readlines('input/081.txt').collect {|l| l.split(',').collect {|i| i.to_i } }
1.upto(matrix.length-1) {|i| matrix[0][i] += matrix[0][i-1]; matrix[i][0] += matrix[i-1][0] }
1.upto(matrix.length-1) {|i| matrix[i][i] += [matrix[i][i-1], matrix[i-1][i]].min; (1).upto(matrix.length-1-i) {|j| matrix[i][i+j] += [matrix[i][i+j-1],matrix[i-1][i+j]].min; matrix[i+j][i] += [matrix[i+j-1][i],matrix[i+j][i-1]].min } }
p matrix[matrix.length-1][matrix.length-1]
