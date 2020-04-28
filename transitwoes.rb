# problem: https://open.kattis.com/problems/transitwoes
# s = time, t = the time first class starts, n = no of transit routes
# d = time to walk
# b = amount of time for riding the i-th bus
# c = interval of the arriving bus

# Scenario 1 input:
# 0 20 2
# 2 2 2
# 5 5
# 3 5

# 1st phase
# house to 1st bus stop = 2 minutes
# upcoming bus reaching 1st bus stop at 3th minute
# travel time from 1st bus stop to next bus stop = 5 minutes
# SUMMARY of 1st phase: it took 2 minutes + 1 minute(from 2th minute to 3rd minute) + 5 minute = 8 minutes
# 2nd phase
# 1st bus stop's drop off point to 2nd bus stop = 2 minutes
# upcoming bus reaching 2nd bus stop at 5th minute 
# travel time from 2nd bus stop to final bus stop = 5 minutes 
# SUMMARY of 2nd phase: it took 18 minutes (2 minutes + 3 minutes(2nd minute to 5th minute) + 5 minutes) total for 1st and 2nd phase
# 3rd phase
# final bus stop's dropp off point to class = 2 minutes (20h minute)
# SUMMARY of 3rd phase: it took 20 minutes to reach his class which is starting at 20th minute
# outcome: YES, he can reach his first class on time.
# ==========================================================================================================
# Scenario 2 input:
# 0 10 1
# 3 3
# 1
# 8

# 1st phase
# house to 1st bus stop = 3 minutes
# upcoming bus reaching at 8th minutes
# travel time from 1st bus stop to destination bus stop = 1 minute
# SUMMARY of 1st phase: it took 3 minutes + 5 minutes (3rd minute to 8th minute) + 1 minute = 9 minutes
# 2nd phase
# final bus stop's drop off point to class takes 3 minutes (9 + 3 = 12th minutes)
# SUMMARY of 2nd phase: it took 12 minutes to reach his class which is starting at 10th minute
# Outcome: NO, he can't make it in time for his first class

# get user input
first_phase_input = gets.chomp 
first_phase_input_arr = first_phase_input.split(' ') # split input with space and store it in array

walk_input = gets.chomp
walk_input_arr = walk_input.split(' ')

ride_time_input = gets.chomp
ride_time_input_arr = ride_time_input.split(' ')

interval_input = gets.chomp
interval_input_arr = interval_input.split(' ')

# 1st phase variables and its values
leave_home_time = first_phase_input_arr[0].to_i
reach_class_time = first_phase_input_arr[1].to_i
no_of_transits = first_phase_input_arr[2].to_i

# walk phase variables and its values
time_to_walk = 0
walk_input_arr.each do |num|
    numInt = num.to_i
    time_to_walk += numInt
end

# time_phase variables and its values
time_to_ride = 0
ride_time_input_arr.each do |num|
    numInt = num.to_i
    time_to_ride += numInt
end

# interval phase variables and its values
total_interval = 0
interval_input_arr.each do |num|
    numInt = num.to_i
    total_interval += numInt
end


# retrieve the walking to bus stop time based on number of intervals
walking_busstop_time_arr = walk_input_arr.take(interval_input_arr.length)
walking_busstop_time_arr.each do |num|
    numInt = num.to_i
    total_interval -= numInt
end

# print("Total time walking: ")
# print(time_to_walk)
# print("\n")
# print("Total time riding: ")
# print(time_to_ride)
# print("\n")
# print("Total interval time: ")
# print(total_interval)
# print("\n")
total_time = time_to_walk + time_to_ride + total_interval
if(total_time <= reach_class_time)
    print("yes")
    print("\n")
else
    print("no")
    print("\n")
end