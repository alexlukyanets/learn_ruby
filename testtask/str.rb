def add_odd_even(string)
  string = string.split('')
  even = string.values_at(* string.each_index.select {|i| i.even?})
  odd = string.values_at(* string.each_index.select {|i| i.odd?})
  even = odd + even
  even.join('')
end


def decrypt_str(string)
  delimiter = string.length/2.to_i
  part_one = string.slice(0, delimiter ).split('')
  part_two = string.slice(delimiter...).split('')
  part_two.zip(part_one).join()
end

def ecrypt(str, n)
  if str or n <=0
    n.times do
      str = add_odd_even str.downcase
    end
  end
  str
end

def decrypt(str, n)
  if str or n <=0
    n.times do
      str = decrypt_str str
    end
  end
  str
end

n = 1
str = 'Abcdefghij'
puts str
enc = ecrypt(str, n)
print enc
puts
print decrypt(enc, n)


