# print the numbers 10 - 100 using a while loop

number = 10

while number > 9 do
  puts number
  number = number + 1
  break if number > 100
end
=end

# print only the odd numbers between 1 - 100 using a while loop

number = 1

while number < 101 do
  if number.odd?
    puts number
  end
  number = number + 1
end
