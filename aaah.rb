# https://open.kattis.com/problems/aaah

# get user input
jon_input = gets.chomp
doc_input = gets.chomp

# if jon's aaaaah is longer than doctor's aah, then john can go see doctor, otherwise no
if (jon_input.length >= doc_input.length)
  puts "go"
else
  puts "no"
end
