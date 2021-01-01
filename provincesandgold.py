# https://open.kattis.com/problems/provincesandgold

# get user input
userInput = input()
input_arr = userInput.split(' ')
noOfGold = int(input_arr[0])
noOfSilver = int(input_arr[1])
noOfCopper = int(input_arr[2])

# price of cards
provincePrice = 8
duchyPrice = 5
estatePrice = 2
goldPrice = 6
silverPrice = 3
copperPrice = 0

# buying power of treasure cards
goldBuyingPower = 3
silverBuyingPower = 2
copperBuyingPower = 1

# count the number of credits
totalCredit = noOfGold * goldBuyingPower + noOfSilver * silverBuyingPower + noOfCopper * copperBuyingPower

victoryCardResult = ""
treasureCardResult = ""

if totalCredit >= provincePrice:
    victoryCardResult = "Province"
elif totalCredit >= duchyPrice:
    victoryCardResult = "Duchy"
elif totalCredit >= estatePrice:
    victoryCardResult = "Estate"


if totalCredit >= goldPrice:
    treasureCardResult = "Gold"
elif totalCredit >= silverPrice:
    treasureCardResult = "Silver"
elif totalCredit >= copperPrice:
    treasureCardResult = "Copper"

# output requirements
if victoryCardResult != "" and treasureCardResult != "":
    print(victoryCardResult + " or " + treasureCardResult)
elif victoryCardResult != "":
    print(victoryCardResult)
elif treasureCardResult != "":
    print(treasureCardResult)

