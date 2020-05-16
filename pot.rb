# https://open.kattis.com/problems/pot

# self defined function for pow
def pow(a, b) # (2,2)
  power = 1
  for i in 1..b # (1..2)
    power = power * a #(1 * 2), ( 2 * 2 )
  end
  return power
end

# get user input
input = gets.chomp.to_i
total = 0
input.times do # loop based on the number of numbers user gives
  stringNum = gets.chomp
  number = stringNum[0...-1].to_i # extract number from first char to nth char except last char
  powNumber = stringNum[-1].to_i # extract last char which will be the expo

  # sums up and power each number
  total += pow(number, powNumber)
end

# prints result
puts total
