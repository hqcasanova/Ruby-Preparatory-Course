#!/usr/bin/env ruby

# Goes through all the first 100 non-zero integer numbers
for i in 1..100

  # For non-multiples, no message will be printed out 
  message = ""  

  # If multiple of three, print out "Bitmaker"  
  if i % 3 == 0
    message << "Bitmaker"
  end

  # If multiple of 5, print out "Labs"
  if i % 5 == 0
    message << "Labs"
  end
 
  #Prints out the number if no message applies
  if message.empty?
    puts i  
  else 
  	puts message
  end
end