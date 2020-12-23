def string_processing(string, regex)
  array_words = string.downcase.split(regex).reject(&:empty?)
  uniq_words = array_words.uniq
           .map { |e| [array_words.count(e), e] }
           .select { |c, _| c > 1 }
           .sort.reverse
            #.map { |c, e| "#{ e }:#{ c }" } # If you want return with count
            .map { |_, e| "#{ e }" }
  if uniq_words.length < 3
    return []
  end
  uniq_words
end

regex = %r{[_,\-,;,/, ,\n,.]|(?=[A-Z]+[a-z]+)}
string = """This is my test task.
I'd to show my great task;
I solved problems in my task. I'll prepare to interview/colloquy because task has ready"""
# puts 'Enter your string:'
# string = gets.chomp
#
puts '#'*50 + ' STRING ' + '#'*42
puts string
puts '#'*100
print "Unique Words: #{string_processing(string, regex)}"

