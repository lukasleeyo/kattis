# problem: https://open.kattis.com/problems/tripletexting
# 1.1 get input from console
text_input = gets.chomp
# get length of total words and divide by 3 because the problem state maximum will be 3 words only
length_of_text = text_input.length
each_word_length = length_of_text / 3
# scan for words by number of character for each word; source: https://stackoverflow.com/questions/754407/what-is-the-best-way-to-chop-a-string-into-chunks-of-a-given-length-in-ruby
text_arr = text_input.scan(/.{1,#{each_word_length}}/)
# find duplicate word, and that duplicate word will be the correct answer
puts text_arr.detect { |e| text_arr.count(e) > 1 }
