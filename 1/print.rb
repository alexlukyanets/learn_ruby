a = 'HI'
b = a
a.downcase!
puts b

10.times {puts 'Sparta is champion'}

10.times do
  puts "spartak"
  puts "and Dynamo"
end


sum = 0

24.times do |i|
  sum = sum + 500
  puts "Месяц #{i}, у бабушки в сундуке #{sum}"
end