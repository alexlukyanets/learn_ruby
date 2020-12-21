def divide(one, two)
  return "Я так не думаю" if two == 0
  one / two
end

def can_divide_by?(number)
  return false if number.zero?
  true
end

puts can_divide_by? 3 # => true
puts can_divide_by? 0 # => false

puts divide(2,0) # => Я так не думаю
puts divide(12, 4) # => 3

def factorial_with_default (n = 5)
  n ==0? 1 : n * factorial_with_default(n - 1)
end

puts factorial_with_default 5 # => 120


def max(one_param, *numbers, another)
  puts one_param
  numbers.max
  puts another
end

puts max("что-то", 6, 31, -5, "еще") # => 31