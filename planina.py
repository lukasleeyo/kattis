# https://open.kattis.com/problems/planina

# Logic for this question, using outer sides method

# find the number of outer sides of each iteration
#
# 2 + (2^0) = 3 outer sides, 1st iteration
# 3 + (2^1) = 5 outer sides, 2nd iteration
# 5 + (2^2) = 9 outer sides, 3rd iteration
# 9 + (2^3) = 17 outer sides, 4th iteration
# 17 +(2^4) = 33 outer sides, 5th iteration

# calculate the number of iterations using outer sides
# 1 square have 2^2 = 4 iterations ( 2 outer sides)
  
# 4 squares have 3^2 = 9 iterations ( 3 outer sides)
   
# 16 squares have 5^2 = 25 iterations ( 5 outer sides)
    
# 64 squares have 9^2 = 81 iterations ( 9 outer sides)

# 256 squares have 17 ^2 = 289 iterations (17 outer sides)     

# 1024 squares have 33^2 = 1089 iterations (33 outer sides)


# import the math module
import math

# get user input
userInput = int(input())
outer_sides = 2 # default value is 2 as default square only have 2 outer sides
iteration = 0
# loop thru based on the input, if user looking for 5 iterations, loop 5 times to calc the answer
for i in range(userInput):
    iteration = outer_sides + (math.pow(2,i))  # formula to calc the actual iteration's outer sides
    outer_sides = iteration # next cycle of outer sides is the result of previous iteration

result = int(math.pow(iteration,2)) # calc power of outer sides gives u the correct iteration, tldr: iteration here is no of outer sides

print(result)