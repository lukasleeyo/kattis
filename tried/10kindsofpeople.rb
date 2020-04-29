# problem: https://open.kattis.com/problems/10kindsofpeople
# didn't manage to solve it but at least I tried. only passed 1/25 test cases :()
# Problem: mainly because of diagonal, the location cannot move diagonally, this got me stuck and i have no idea how to solve.
# binary users marked with 0, decimal users marked with 1
# cotents of the map: 11 00
# query 1: 1 1 1 4; (1,1) (1,4) => (r1,c1), (r2,c2)
# binary scenario
# Can binary user start with (r1,c1) which is 1 in the map? no, because binary users are marked with 0
# can binary user move to location (r2,c2) which is (1,4)? no, because (1,4) is located in 1 0 of the map
# decimal scenario
# can decimal user start with (r1,c1); yes, because (1,1) coordinate is located in 1 and decimal is 1.   
# can decimal user travel to (r2,c2) which is (1,4) coordinate located as 0 in the map? no because decimal is 1 destination is 0.
# can decimal user travel to (r1,c1) which is (1,1) coordinate located as 1 in the map? yes because decimal is 1 and destiantion is 1.
# OUTCOME for query 1
# binary cannot, decimal cannot travel between 2 locations: output will be neither

# query 2: 1 1 1 1: (1,1) (1,1) => (r1,c1) (r2,c2)
# binary scenario
# can binary user start with (1,1) which is 1 in the map? no because 1 != 0
# can binary user travel to (1,1) which is 1 in the map? no because 1 != 0
# decimal scenario
# can decimal user travel to (r2,c2) which is 1 in the map? yes because 1 == 1
# can decimal user travel to (r1,c1) which is 1 in the map? yes because 1 == 1
# OUTCOME for query 2
# Binary cannot, decimal can travel between 2 locations: output will be decimal

require 'matrix'


# 1.1 get input from console
# 1.1.1 first line input
input = gets.chomp
inputArr = input.split(' ')
no_of_content_map = inputArr[0].to_i
length_of_map = inputArr[1].to_i
# 1.1.2 second ine input, content of the map
content_map_arr = []
no_of_content_map.times do 
    content_map = gets.chomp.split('')
    content_map_arr.push(content_map)
    #content_map_arr.push(content_map)
end

# 1.1.3 3rd line input, no of queries
no_of_queries = gets.chomp.to_i
# 1.1.4 nth line input, queries based on no of queries provided
rici_arr_even = []
rici_arr_odd = []
results = []
no_of_queries.times do 
    nth_query = gets.chomp
    nth_query_arr = nth_query.split(' ')
    # print(nth_query_arr)
    # print("\n")

    # input array sample value: 1,2,3,4
    # convert it to coordinate r1,c1,r2,c2 format: desired output will be: 1, 3, 2, 4
    # using the even and odd index method to get the desired coordinate formatted array
    # rici_arr_even = nth_query_arr.values_at(* nth_query_arr.each_index.select {|i| i.even?})
    # rici_arr_odd = nth_query_arr.values_at(* nth_query_arr.each_index.select {|i| i.odd?})

    # merge the even and odd formatted array to merged desired coordinate formatted array
    # mergedSortedArr = rici_arr_even + rici_arr_odd
    
    # take the first 2 element which will be r1c1 and last 2 element which will be r2c2
    r1c1 = nth_query_arr.take(2)
    r2c2 = nth_query_arr.last(2)

    # get the r1, c1, r2, c2 value and minus 1 from them as array starts from 0
    r1 = r1c1[0].to_i - 1
    c1 = r1c1[1].to_i - 1

    r2 = r2c2[0].to_i - 1
    c2 = r2c2[1].to_i - 1

    # # retrieve the r1c1 and r2c2 location
    r1c1_location = content_map_arr[r1][c1]
    r2c2_location = content_map_arr[r2][c2]

    # print(content_map_arr)
    # print("\n")



    # print("r1c1 location: ")
    # print(r1c1_location)
    # print("\n")
    # print("r2c2 location: ")
    # print(r2c2_location)
    # print("\n")
    # print("matrix diagonal: ")
    # mat1 = Matrix[content_map_arr]
    # puts mat1.diagonal?()
    matrix_diag = Matrix.rows(content_map_arr).each_with_index(:diagonal).to_a
    # print(matrix_diag)
    # print("\n")
    
    if r1c1_location == "0" && r2c2_location == "0" # binary scenario: if starting location aka r1c1_location is 0 and r2c2_location is 0, then output binary
        results.push("binary")
        # print("binary")
        # print("\n")
    elsif r1c1_location == "1" && r2c2_location == "1" # decimal scenario: if decimal can move between these 2 r1c1 and r2c2, aka both value are 1, then output decimal
        results.push("decimal")
        # print("decimal")
        # print("\n")
    else # both binary and decimal didn't meet the requirements, print neither
        results.push("neither")
        # print("neither")
        # print("\n")
    end

end

# access to individual location concept using x,y where [1] is x, [2] is y CONCEPT
# print(content_map_arr[0][2])
# print("\n")

results.each do |result|
    puts result
end



