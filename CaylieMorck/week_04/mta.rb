# Students should create a program that models a simple subway system.
#
# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.
#
# There are 3 subway lines:
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
# All 3 subway lines intersect at Union Square, but there are no other intersection points.
# For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.
# create a for loop that takes the current stop and goes through the array subway_lines to find the correct one.

require'pry'

subway_lines = {
"n" => ["Times Sqaure", "34", "28N", "23L", "Union Square", "8"],
"l" => ["8", "6", "Union Square", "3", "1"],
"6" => ["Grand Central", "33", "28", "23", "Union Square", "Astor Place"]
}


print "Please enter your current Subway line "
start_line = gets().chomp
print "Please enter your current Subway stop "
start_station = gets().chomp
print "Please enter your desired Subway line "
end_line = gets().chomp
print "Please enter your desired Subway stop "
end_station = gets().chomp

p start_line
p start_station
p end_line
p end_station

start_index = subway_lines[start_line].index(start_station)
end_index = subway_lines[end_line].index(end_station)


if start_line == end_line
  puts "Make your journey on the same line + "

def same_line_travel ( start_station, end_station, line )
  
  stations = subway_lines[line]
  start_index = stations.index(start_station)
  end_index = stations.index(end_station)

  direction_forward = start_index < end_index

  if start_index > end_index
    total_stations = start_index - end_index
    puts "Travel backwards #{total_stations} stations. "
  else
    total_stations = end_index - start_index
    puts "Travel forwards #{total_stations} stations. "
  end

  if direction_forward
    index = start_index
    while index != start_index
      print "#{stations[index]}"
      index += 1
    end

print index

  if direction_backwards
    index = start_index
    while index !=start_index
      print "#{stations[index]}"
      index -= 1
    end
    print index
  end
# print total_stations
  end
  end
  end

if start_line != end_line
  puts "Go to Union Square"
end
