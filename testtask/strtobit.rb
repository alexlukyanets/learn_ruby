

def add_even_odd(binary)
  even = binary.values_at(* binary.each_index.select {|i| i.even?})
  odd = binary.values_at(* binary.each_index.select {|i| i.odd?})
  even = even + odd
end

d = "k".ord.to_s(2).chars.map(&:to_s)
print d
puts
print add_even_odd d