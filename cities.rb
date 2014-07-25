#!/usr/bin/env ruby

# Traverses an array printing out each value
# Params:
# +array+:: Array whose elements are to be printed out
# +type+:: String describing nature of array values
def printArray(arr, type)
  puts "#{type}: " +arr.join(", ")
end

# Prints out a short line describing the syntax for the command
def printUsage
  puts "Usage: cities.rb City1 City2 City3 City4 City5"	 
end

# Checks that user provided the right number of arguments 
if (ARGV.length == 5)
  
  # Checks that each argument is a string that "looks like" the name of a city
  for i in 0..4
    unless ARGV[i] =~ /[A-Z][a-z]*/  # Non-accentuated letters, first one in uppercase 
      puts "Error: element #{i} in the argument list does not seem to be a city name in English"
      printUsage
      exit
    end
  end

  # Prints out the whole array
  printArray(ARGV, "Favourite cities")

# Wrong number of arguments  
else 
  puts "Error: five string arguments expected."
  printUsage
end