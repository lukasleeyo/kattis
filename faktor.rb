# problem: https://open.kattis.com/problems/faktor
# 1.1 get input from console
input = gets.chomp # input example: 38 24
inputArr = input.split(' ') # split input with space and store it in array
noOfArticles = inputArr[0].to_i # access first value which is 38 e.g
impactFactor = inputArr[1].to_i # access second value which is 24 e.g
# calc totalNum
totalNum = noOfArticles * impactFactor

isCorrect = false
# while we haven't find the correct result
while(!isCorrect)
    # continue to calculate actualImpactFactor with new totalNum each time the check
    actualImpactFactor = totalNum / noOfArticles.to_f 
    # condition
    if(actualImpactFactor > impactFactor - 1 && actualImpactFactor <= impactFactor)
        totalNum = totalNum - 1 # deduct totalNum from itself by 1 until we get the lowest/minimal actualImpactFactor
    else
        isCorrect = true # set isCorrect to true once we found minimal actualImpactFactor to break the loop
        print(totalNum + 1) # print out result and add 1 to the result because min actualImpactFactor reached 23.0 when the min should be 23.02
        print("\n")
    end
end