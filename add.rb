#!/usr/bin/env ruby

# Adds two numbers together
# Params: 
# +value1+:: first number to add
# +value2+:: second number to add
def add(value1, value2)
  puts "Numbers to add: #{value1} #{value2}"
  print "Result: " , value1.to_i + value2.to_i, "\n"
end

# Checks two strings provided and starting with a at least one integer each
unless (ARGV.length == 2) && (ARGV[0].to_i != 0) && (ARGV[1].to_i != 0)
  puts "Error: Two integer-like arguments expected."
  puts "Usage: add.rb value1 value2"
  exit
end

# Performs the addition
add(ARGV[0], ARGV[1])