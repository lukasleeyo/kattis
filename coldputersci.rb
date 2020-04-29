# problem: https://open.kattis.com/problems/cold
# 1.1 get input from console
noOfTemps = gets.chomp
input = gets.chomp
inputArr = input.split(" ") # split input with space and store it in array
result = 0
inputArr.each do |temp|
  actualTemp = temp.to_i
  if actualTemp < 0
    result += 1
  end
end

print(result)
print("\n")
