def add_even_odd(string)
  even = string.values_at(* string.each_index.select {|i| i.even?})
  odd = string.values_at(* string.each_index.select {|i| i.odd?})
  even = odd + even
  even.join('')
end
