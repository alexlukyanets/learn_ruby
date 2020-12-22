# frozen_string_literal: true

def split_str(str)
  str.split('')
end

def replace_binary(item)
  item.ord.to_s(2).chars.map(&:to_i)
end

def get_binary(d)
  a = []
  d.each do |i|
    d = replace_binary i
    d.each {|item| a.push item}
  end
  a
end

def add_even_odd(binary)
  even = binary.values_at(* binary.each_index.select {|i| i.even?})
  odd = binary.values_at(* binary.each_index.select {|i| i.odd?})
  even = even + odd
end

def get_string(array)
  array.join('').to_i(2).chr
end

def split_array(array)
  d = array.each_slice(7).to_a
  string = ""
  d.each do |i|
    my_str = get_string i
    string = string + my_str
  end
  string
end

d = split_str('A')
b = get_binary(d)
b = add_even_odd b
puts
print split_array(b)