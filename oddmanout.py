# problem: https://open.kattis.com/problems/oddmanout

# G no of Guests; unique number C; N number of test cases
# 3 test cases
# Scenario 1:
# 3 guests with 3 unique number ticket: 1 2147483647 2147483647
# outcome: The odd ticket number is 1
# ==============================================================
# Scenario 2:
# 5 guests with 5 unique number ticket: 3 4 7 4 3
# outcome: The odd ticket number is 7
# ==============================================================
# Scenario 3:
# 5 guests with 5 unique number ticket: 2 10 2 10 5
# outcome: The odd ticket number is 5
from collections import Counter

# get user input
noOfCases = int(input())
ticketNumbersList = []
noOfGuests = 0
odds = []
# prompt user the scenarios based on the number of cases
for i in range(noOfCases):
    noOfGuests = int(input())
    # split the ticket numbers by space
    ticketNumbersList = input().split(' ')
    # ensure no of guests matches the no of tickets, i.e 3 guests 3 tickets
    if(len(ticketNumbersList) != noOfGuests):
        print("Please ensure no of tickets matches no of guests!")
        break
    # Remove duplicate including original source https://stackoverflow.com/questions/26790493/remove-duplicate-and-original-from-list-python
    # must import Counter library
    odds = Counter(ticketNumbersList)
    print('Case #{}: {}'.format(
        i+1, [k for k in ticketNumbersList if odds[k] == 1][0]))
