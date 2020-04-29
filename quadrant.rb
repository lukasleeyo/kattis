# problem: https://open.kattis.com/problems/quadrant
# 1.1 get input from console
x_input = gets.chomp
y_input = gets.chomp
# 1.2 convert input to integers
x_axis = x_input.to_i
y_axis = y_input.to_i

quadrant = 0
# determine x,y axis belongs to which quadrant
if(x_axis > 0 && y_axis > 0) # case 1: both x and y axis are positive value
    quadrant = 1
elsif(x_axis < 0 && y_axis > 0) # case 2: x is negative, y is positive
    quadrant = 2
elsif(x_axis < 0 && y_axis < 0 ) # case 3: both x,y are negative
    quadrant = 3
else # case 4: x is positive, y is negative
    quadrant = 4
end
# prints the result
print(quadrant)
print("\n")