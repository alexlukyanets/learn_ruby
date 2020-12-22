a = 'Abcdefghij'
print a.each_byte.map {|d| (d + 1).chr}.join("")