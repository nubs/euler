dow=2
sundays=0
months=[3,0,3,2,3,2,3,3,2,3,2,3]
(1901..2000).each {|y| months.each {|m| dow = (dow + (m == 0 && y % 4 == 0 ? 1 : m)) % 7; sundays += 1 if dow == 0 } }
puts sundays
