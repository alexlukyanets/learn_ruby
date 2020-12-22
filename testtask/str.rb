def add_odd_even(string, enc = TRUE)
  string = string.split('')
  even = string.values_at(* string.each_index.select {|i| i.even?})
  odd = string.values_at(* string.each_index.select {|i| i.odd?})
  even = odd + even
  even.join('')
end

def ecrypt(str, n)
  n.times do |i|
    str = add_odd_even str.downcase
  end
  str
end

def decrypt(str, n)
  n.times do |i|
    str = add_odd_even str, FALSE
  end
  str
end

n = 1
str = 'Abcdefghij'
puts str
enc = ecrypt(str, n)
print enc
puts
#print decrypt(enc, n)


