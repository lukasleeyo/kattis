# https://cses.fi/problemset/task/1618

# print out trailing zeroes
# my approach, using right pointer, shift right pointer to left until it's not longer 0

# import math module
import math

# using 5 as the base
# divide the number by 5^e+1 until you reach 0 and sum up the trailng zeroes count at the same time


# def fact(n):
#     expo = 1
#     count = 0
#     while(int(n/math.pow(5, expo)) != 0):
#         count += n/math.pow(5, expo)
#         expo += 1
#     return count

def solve(n):
    if not n:
        return 0
    return n // 5 + solve(n // 5)


# get user input
userInput = int(input())
trailingZeroCount = 0

trailingZeroCount = solve(userInput)

print(int(trailingZeroCount))
# print(userInput//5)


# not optimal solution, can't handle large number like 1 billion factorial, will TLE
# factorial = math.factorial(userInput)
# string_factorial = str(factorial)

# counter = 1

# # set right pointer to the last number which should be 0
# rightPointer = string_factorial[-1]
# for i in range(len(string_factorial)):
#     # if rightPointer is 0, continue to shift rightPointer to left
#     if rightPointer == "0":
#         rightPointer = string_factorial[-1 - counter]
#         trailingZeroCount += 1
#     counter += 1
