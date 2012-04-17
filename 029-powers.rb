p (2..100).collect {|i| (2..100).collect {|j| i**j } }.flatten.uniq.length
