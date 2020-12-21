a = ('a'..'z').to_a

print a
puts
print a.values_at(* a.each_index.select {|i| i.even?})
puts
print a.values_at(* a.each_index.select {|i| i.odd?})