# problem: https://open.kattis.com/problems/tarifa

# X MEGABYTES
# N months
# P amount of megabytes spent

# Scenario 1
# each month 10 Megabytes; 1 year 120 Megabytes
# First 3 month as follows:
# 1st month: used 4 Megabytes; left 6 Megabytes; (10-4+0 = 6) transfer to next month
# 2nd month: used 6 Megabytes; left 10 Megabytes; (10-6+6 = 10) transfer to next month
# 3rd month: used 2 Megabytes; left 18 Megabytes; (10-2+10= 18)
# nth month: 10 + 18 = 28 Megabytes

# Scenario 2
# each month 10 Megabytes; 1 year 120 Megabytes
# First 3 month as follows:
# 1st month: used 10 Megabytes; left 0 Megabytes; (10-10+0 = 0) transfer to next month
# 2nd month: used 2 Megabytes; left 8 Megabytes; (10-2+0 = 8) transfer to next month
# 3rd month: used 12 Megabytes; left 18 Megabytes; (10-12+8 = 6)
# nth month: 10 + 6 = 16 Megabytes

# Scenario 3
# each month 15 Megabytes; 1 year 180 Megabytes
# First 3 month as follows:
# 1st month: used 15 Megabytes; left 0 Megabytes; (15-15+0 = 0) transfer to next month
# 2nd month: used 10 Megabytes; left 5 Megabytes; (15-10+0 = 5) transfer to next month
# 3rd month: used 20 Megabytes; left 0 Megabytes; (15-20+5 = 0)
# nth month: 15 + 0 = 15 Megabytes


# 1.1 get input from console
x_megabytes_month = gets.chomp.to_i
first_n_months = gets.chomp.to_i
megabytes_available = 0 #default megabytes left should be 0
# prompt user for megabytes consumed per month based on first_n_months value
first_n_months.times do 
    p_megabytes_consumed_month = gets.chomp.to_i
    megabytes_available += x_megabytes_month - p_megabytes_consumed_month # accumulate (AKA transfer to next month) the megabytes_available each time the mb is used from the x_megabytes_month monthly 
end

puts megabytes_available + x_megabytes_month # add the megabytes_available by x_megabytes_month to renew the data each month for subsequent n + 1 months



