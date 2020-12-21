def add_even_odd(binary)
  even = binary.values_at(* binary.each_index.select {|i| i.even?})
  odd = binary.values_at(* binary.each_index.select {|i| i.odd?})
  even = even + odd
end

def get_string(array)
  array.join('').to_i(2).chr
end

d = "A".ord.to_s(2).chars.map(&:to_i)
print d
puts
s =  add_even_odd d
puts
print get_string s

chars

each byte