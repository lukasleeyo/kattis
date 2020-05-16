# https://open.kattis.com/problems/speedlimit
# 20 2 (20 * 2)
# 30 6 (30 * (6 - 2))
# 10 7 (10 * (7-6))
# get user input
input = gets.chomp.to_i
log_arr = []
speed_arr = []
time_arr = []
counter = 0
total = 0
total_arr = []
while input != -1 # loop will break if input = -1
  input.times do # loop based on the number of sets of speed and time; e.g input "3" means there are 3 sets of speed and time; (20,2), (30,6), (10, 7)
    # must loop based on number of sets of speed and time because need to limit how many sets of speed and time the user can type
    # if user asks for 3 sets, loop for 3 sets only, otherwise if user ask for 3 sets, u can loop till don't know how many sets
    logInput = gets.chomp
    log_arr = logInput.split(" ") #split array for 2 inputs; speed and time
    speedmiles = log_arr[0].to_i
    time = log_arr[1].to_i
    # add speed and time into array for computation usage later on
    speed_arr.append(speedmiles)
    time_arr.append(time)
  end

  # loop thru each speed
  speed_arr.each do |speed|
    if counter > 0
      total += speed * (time_arr[counter] - time_arr[counter - 1]) #if it's not first element, minus current time element by previous time element
    else
      total += speed * (time_arr[counter] - 0) #if first element, minus time by 0
    end
    counter += 1 # increase counter as loop continues
  end
  # append each total to array and print it out at all once later on
  total_arr.append(total)
  # ask for input again, if input == -1, break loop, else continue to next statement
  input = gets.chomp.to_i
  # reset whole session after each loop
  speed_arr = []
  time_arr = []
  log_arr = []
  total = 0
  counter = 0
end

# print out the result all at once after everything finished
total_arr.each do |total|
  puts total.to_s + " miles"
end
