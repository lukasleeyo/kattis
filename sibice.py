# https://open.kattis.com/problems/sibice
# given widht and height of the box, find the maximum length within the box
# maximum length within the box = diagonal length of the box
# you can put match in 3 ways, vertically, horizontally, diagonally
# the qns asks for match to be fit in the box entirely, so it makes sense to compare it against diagonally

# import the math module
import math

# get user input
userInput = input()
input_arr = userInput.split(' ')
noOfMatches = int(input_arr[0])
width = int(input_arr[1])
height = int(input_arr[2])
resultList = []

# calculate the diagonal length of box using pythagoeres theormem
diagonalLength = math.sqrt(math.pow(height, 2) + math.pow(width, 2))

for i in range(noOfMatches):
    # get each match's length input
    lengthOfMatch = int(input())
    # if match's length is less equal than diagonal length aka can fit the box diagonally
    if lengthOfMatch <= diagonalLength:
        resultList.append("DA")
    else:
        resultList.append("NE")

# print array using this special formatter, with sep next line
print(*resultList, sep="\n")
